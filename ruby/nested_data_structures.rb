refrigerator = {
	top_shelf: {
		dairy: {
			butter: 2,
			yogurt: 8
		},
		sauces: [
			'Mayo',
			'Salad Dressing',
			'Salsa'
		]
	},
	second_shelf: {
		leftovers: [
			'Pot roast',
			'Grilled Chicken',
			'Green Beans',
			'Salad'
		],
		eggs: {
			hardboiled: 6,
			untouched: 12
		}
	},
	crisper_left: {
		vegetables: {
			bell_peppers: [
				'Red',
				'Green',
				'Yellow'
			],
			lettuces: [
				'Romaine',
				'Iceburg',
				'Organic Mixed Greens'
			],
			cucumbers: 4
		},
	crisper_right: {
		fruits: {
			grapes: [
				'Red',
				'Green'
			],
			apples: {
				granny_smith: 4,
				pink_lady: 6
			},
			organges: 5
		},
		lemon_juice: 1
	}
}
}
#build an hash with a mix of arrays and hashes inside
p refrigerator
#print hash
p refrigerator[:top_shelf][:sauces][2]

refrigerator[:second_shelf][:leftovers].push('Really Bad Indian Food')

p refrigerator[:second_shelf][:leftovers]

p refrigerator[:crisper_left][:vegetables][:lettuces][2].downcase

refrigerator[:crisper_left][:vegetables][:cucumbers] = 2

p refrigerator[:crisper_left][:vegetables][:cucumbers]
#make multiple calls to print deeply nested data
