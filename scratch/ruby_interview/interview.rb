#  This is a code test that we should send to or use with Ruby engineers:
# 1. convert this string
# string = "{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}"
# to this Ruby hash:
# h = {"key" => [["value_1", "value_2"],["value_3", "value4"]], 5=>"10:00AM"}
# then convert h to json.
# Please note that the brackets are unbalanced. 
 
# 2. Write a class Chris that takes this object:
# h = {"this" => [1,2,3,4,5,6], "that" => ['here', 'there', 'everywhere'], :other => 'here'}
# and represent each key in the hash as an attribute of an instance of the class, such that I can say:
# c = Chris.new(h)
# and 
# c.this should equal [1,2,3,4,5,6]
# c.that  should equal ['here', 'there', 'everywhere']
# c.other should equal here'
require 'json'








string = "{key:[	[value_1, value_2],[value_3, value4]	], 5:10:00AM]}"

h = {"key" => [["value_1", "value_2"],["value_3", "value4"]], 5=>"10:00AM"}

p string


# 3. The attached file is real sample data from a company called Factual. Write a rake task that takes the attached file as input, and outputs a hash, whose keys are the fields from the first line of the input file, and whose values are array of 1) the character count of the longest occurrence of the data for that field, as well as the factual id for that longest occurrence. 
# If there is no field length > 0, please return "" instead of a factual_id (see the "chain_name" and "chain_id" fields in the output below).
# Please keep in mind that this file is over 23 million lines long -- so your rake task should process each line as it is read, and it should be relatively efficient!
# Make it so I can call this rake task by saying . . .
# cat factual_101_rows.txt | rake factual:measure_field_lengths
# . . . and get this output: 
# {"factual_id"=>[36, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "name"=>[72, "900ba574-2cc5-4d22-bf2e-92fb14412abf"], "address"=>[25, "9f56d3d6-f1e9-463c-b6b5-020bf2cd9492"], "address_extended"=>[8, "59e079c4-cb58-4d0f-854a-671157dfcb55"], "po_box"=>[13, "6ec565c0-2a8e-49ea-82a9-b905369185e9"], "locality"=>[18, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "region"=>[2, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "post_town"=>[0, ""], "admin_region"=>[0, ""], "postcode"=>[5, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "country"=>[2, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "tel"=>[14, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "fax"=>[14, "f9dfe097-74bf-469c-a2c8-901c4a58a80e"], "latitude"=>[9, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "longitude"=>[11, "59e079c4-cb58-4d0f-854a-671157dfcb55"], "neighborhood"=>[57, "5598000e-23c4-4883-bc04-538f29ac07e6"], "website"=>[41, "d65bf844-e07c-458d-8d27-10d7608bc79a"], "email"=>[28, "a1db9414-01b4-4f7a-8cda-fbb7e007b04f"], "category_ids"=>[7, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "category_labels"=>[88, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "status"=>[1, "b716c681-ad67-4c9c-aab4-7f5fb39e3e11"], "chain_name"=>[0, ""], "chain_id"=>[0, ""]}

