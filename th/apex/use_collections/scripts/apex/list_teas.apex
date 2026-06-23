// List example
List<String> teas = new List<String>();
teas.add('Earl Grey');
teas.add('English Breakfast');
teas.add('Chamomile');
teas.add('Earl Grey'); // duplicate allowed

System.debug('Teas list size: ' + teas.size());
System.debug('First tea: ' + teas[0]);

for (Integer i = 0; i < teas.size(); i++) {
    System.debug('Index ' + i + ': ' + teas[i]);
}
