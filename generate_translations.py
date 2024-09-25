import os
import json

def find_translations_in_json(data):
	translations = {}

	def extract_translations(obj):
		# Check if the current object is a dictionary
		if isinstance(obj, dict):
			# Check for "translate" and "fallback" in the current object
			if "translate" in obj and "fallback" in obj:
				translations[obj["translate"]] = obj["fallback"]
			# Check for specific nested fields
			if "minecraft:item_name" in obj:
				item_translations = obj["minecraft:item_name"]
				if isinstance(item_translations, dict):
					if "translate" in item_translations and "fallback" in item_translations:
						translations[item_translations["translate"]] = item_translations["fallback"]
				elif isinstance(item_translations, str):
					try:
						# Attempt to parse the string as JSON
						parsed_item = json.loads(item_translations)
						extract_translations(parsed_item)  # Extract from the parsed string
					except json.JSONDecodeError:
						pass  # Silently fail if the string cannot be decoded
			else:
				# Recursively check each value in the dictionary
				for key, value in obj.items():
					extract_translations(value)

		# If the object is a list, check each item in the list
		elif isinstance(obj, list):
			for item in obj:
				extract_translations(item)

	extract_translations(data)
	return translations

def process_file(file_path):
	translations = {}
	try:
		with open(file_path, 'r', encoding='utf-8') as file:
			data = json.load(file)
			translations = find_translations_in_json(data)
	except json.JSONDecodeError as e:
		print(f"Skipping file due to JSON decode error: {file_path}, Error: {e}")
	except Exception as e:
		print(f"An error occurred while processing {file_path}: {e}")
	return translations

def process_directory(directory_path):
	all_translations = {}
	# Folders to exclude from processing
	exclude_dirs = ['worldgen', 'predicate', 'dimension_type', 'dimension', 'damage_type', 'tags']

	# Recursively walk through all files in the directory
	for root, _, files in os.walk(directory_path):
		# Check if the current directory should be excluded
		if any(exclude_dir in root for exclude_dir in exclude_dirs):
			continue  # Simply continue without printing anything

		for file in files:
			if file.endswith('.json'):
				file_path = os.path.join(root, file)
				print(f"Processing file: {file_path}")
				translations = process_file(file_path)
				all_translations.update(translations)

	return all_translations

def save_translations_to_file(translations, output_file='translations.json'):
	if translations:
		# Sort translations alphabetically
		sorted_translations = dict(sorted(translations.items()))

		# Write sorted output to file with tab indentation
		with open(output_file, 'w', encoding='utf-8') as file:
			file.write('{\n')
			
			# Variables to track previous parts for separation
			last_part1 = last_part2 = last_part3 = None
			
			# Iterate through sorted translations and handle commas
			for index, (translation_id, fallback) in enumerate(sorted_translations.items()):
				# Split translation ID into parts
				parts = translation_id.split('.')
				current_part1 = parts[0]  # part1
				current_part2 = parts[1] if len(parts) > 1 else None  # part2
				current_part3 = parts[2] if len(parts) > 2 else None  # part3
				current_part4 = parts[3] if len(parts) > 3 else None  # part4
				
				# Add a blank line if part1 changes, part2 changes, or if part3 changes
				# with the specified conditions
				if (last_part1 is not None and current_part1 != last_part1) or \
				   (last_part2 is not None and current_part2 != last_part2) or \
				   (last_part3 is not None and current_part3 != last_part3 and current_part2 != 'advancements' and current_part1 != 'enchantment'):
					file.write('\n')  # Add an empty line

				# Write the translation entry with tab indentation
				file.write(f'\t"{translation_id}": "{fallback}"')  # Tab indentation
				
				# Add a comma if this is not the last item
				if index < len(sorted_translations) - 1:
					file.write(',')

				file.write('\n')  # New line after each entry

				# Update last parts
				last_part1, last_part2, last_part3 = current_part1, current_part2, current_part3

			file.write('}\n')  # Closing brace
		print(f"Translations successfully saved to {output_file}")
	else:
		print(f"No valid translations found, not saving any file.")

if __name__ == "__main__":
	# Automatically use the 'data' folder in the same directory as the script
	script_dir = os.path.dirname(os.path.realpath(__file__))
	data_dir = os.path.join(script_dir, 'data')

	if os.path.isdir(data_dir):
		print(f"Scanning directory: {data_dir}")
		translations = process_directory(data_dir)
		save_translations_to_file(translations)
	else:
		print(f"Directory 'data' not found in {script_dir}")
	
	input("Press Enter to exit...")
