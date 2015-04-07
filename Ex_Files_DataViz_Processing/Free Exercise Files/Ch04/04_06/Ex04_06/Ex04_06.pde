// Ex04_06

// Manually entering text
String deerHunterOntology = "This is this. It's not something else. This is this.";
//println(deerHunterOntology);

size(600, 200);
smooth();
background(#EEEEEE);
fill(#000000);
text(deerHunterOntology, 100, 140);

String poemLines[] = loadStrings("Szymborska.txt");
println(poemLines[0]);
println(poemLines[1]);
