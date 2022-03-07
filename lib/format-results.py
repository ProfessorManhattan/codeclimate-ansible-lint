import json
#TODO mapping the ansible link categories to code climate categories 
# Opening JSON file
with open('/usr/src/app/result.json') as json_file:
    data = json.load(json_file)
    
    for analysis in data:
        analysis['categories'] = ['Bug Risk']
        if 'end' not in analysis['location']['lines']:
            analysis['location']['lines']['end'] = analysis['location']['lines']['begin']
        print(json.dumps(analysis) + '\0')

