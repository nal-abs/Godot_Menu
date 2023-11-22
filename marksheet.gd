extends Node

# func log():
#	print('Hello world')
	
# Called when the node enters the scene tree for the first time.
func _ready():
	print('Hi')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
const markSheets = [
		{
			'student': 'Sriram',
			'rollNo': '11',
		},
		{
			'student': 'Ram',
			'rollNo': '16',
		},
		{
			'student': 'sri',
			'rollNo': '18',
		},
		{
			'student': 'mani',
			'rollNo': '20',
		},
	];

const studentMarks = {
	'11': {
		'tamil': 80,
		'english': 90,
		'science': 86
	},
	'16': {
		'tamil': 60,
		'english': 97,
		'science': 100
	},
	'18': {
		'tamil': 60,
		'english': 90,
		'science': 30,
	},
	'20': {
		'tamil': 40,
		'english': 70,
		'science': 86
	},
}


func combine_objects(obj1, obj2, obj3):
	var duplicatObject = obj1.duplicate()
	duplicatObject.merge(obj2)
	duplicatObject.merge(obj3)

	return duplicatObject
	
func _getPassCount(detail):
	return detail.result == 'pass'
	
func _getFailCount(detail):
	return detail.result == 'fail'

var rank = 0;
func _getRank(markSheet):
	if markSheet.result == 'pass':
		rank = rank + 1;
	else: 
		rank = '-'
	markSheet.merge({ 'rank': rank });
	return markSheet;
	
	
func _getTotal(ele):
	var mark = studentMarks[ele['rollNo']];
	var total = mark.tamil + mark.english + mark.science;
	var result = 'pass' if(min(mark.tamil, mark.english, mark.science) > 35) else 'fail';
	var detail = {
		'total': total, 
		'result':  result 
	}
	
	return combine_objects(ele, mark, detail)
	
var _pass = 0;
var fail = 0;
func _init():
	var details = markSheets.map(_getTotal)
	details.sort_custom(func(a,b): return a['total'] > b['total'])
	print(details.map(_getRank));
	print({
		'pass': details.filter(_getPassCount).size(),
		'fail': details.filter(_getFailCount).size()
		})
	print(min(12,10,4,1) > 3)
  

