textData = string(T.project_name);
cleanedData = tokenizedDocument(textData);
cleanedData = addPartOfSpeechDetails(cleanedData);
cleanedData = removeStopWords(cleanedData);
cleanedData = normalizeWords(cleanedData,"Style",'lemma');
cleanedData = erasePunctuation(cleanedData);
cleanedData = removeShortWords(cleanedData,2);
cleanedBag = bagOfWords(cleanedData);
cleanedBag = removeInfrequentWords(cleanedBag,2);
cleanedBag=removeEmptyDocuments(cleanedBag);

%%

figure
wordcloud(cleanedBag)
