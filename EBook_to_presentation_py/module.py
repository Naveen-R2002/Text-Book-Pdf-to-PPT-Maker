#..........................................Abstractive Summarizer....................................#
import os
import time
import numpy as np
import pandas as pd
from gensim.summarization import summarize
from sumy.utils import get_stop_words
from sumy.nlp.stemmers import Stemmer
from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import Tokenizer as sumytoken
from sumy.summarizers.lex_rank import LexRankSummarizer
from sumy.utils import get_stop_words

from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import Tokenizer as sumytoken
from sumy.summarizers.lsa import LsaSummarizer as Summarizer
from sumy.utils import get_stop_words

from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import Tokenizer as sumytoken
from sumy.summarizers.luhn import LuhnSummarizer
import nltk
nltk.download('punkt')

from gtts import gTTS 


def gensim_abstractive_summarizer(text):
    return (summarize(text))

def lexrank_abstractive_summarizer(text, stemmer, LANGUAGE, SENTENCES_COUNT):
    parser = PlaintextParser.from_string((text), sumytoken(LANGUAGE))
    summarizer_LexRank = LexRankSummarizer(stemmer)
    summarizer_LexRank.stop_words = get_stop_words(LANGUAGE)
    sentences = []
    for sentence in summarizer_LexRank(parser.document, SENTENCES_COUNT):
        a = sentence
        sentences.append(str(a))
    return " ".join(sentences)

def lsa_abstractive_summarizer(text, stemmer, LANGUAGE, SENTENCES_COUNT):
    parser = PlaintextParser.from_string((text), sumytoken(LANGUAGE))
    summarizer_lsa = Summarizer(stemmer)
    summarizer_lsa.stop_words = get_stop_words(LANGUAGE)
    sentences = []
    for sentence in summarizer_lsa(parser.document, SENTENCES_COUNT):
        a = sentence
        sentences.append(str(a))
    return " ".join(sentences)

def luhn_abstractive_summarizer(text, stemmer, LANGUAGE, SENTENCES_COUNT):
    parser = PlaintextParser.from_string(text, sumytoken(LANGUAGE))
    summarizer_luhn = LuhnSummarizer(stemmer)
    summarizer_luhn.stop_words = get_stop_words(LANGUAGE)
    sentences = []
    for sentence in summarizer_luhn(parser.document, SENTENCES_COUNT):
        a = sentence
        sentences.append(str(a))
    return " ".join(sentences)

def main(summary,fn):
    java_path='C:/Users/Naveen/Desktop/final_pdf_ppt/final_pdf_ppt/EBook_To_Presentation/web/'
    
    LANGUAGE = "english"
    SENTENCES_COUNT = 2
    stemmer = Stemmer(LANGUAGE)
    with open(summary,"r") as myfile:
        text = myfile.read()
        #print("Original_text:",text)
        
    Abstractive_gensim_summary = gensim_abstractive_summarizer(text)
    Abstractive_lexrank_summary = lexrank_abstractive_summarizer(text, stemmer, LANGUAGE, SENTENCES_COUNT)
    Abstractive_lsa_summary = lsa_abstractive_summarizer(text, stemmer, LANGUAGE, SENTENCES_COUNT)
    Abstractive_luhn_summary = luhn_abstractive_summarizer(text, stemmer, LANGUAGE, SENTENCES_COUNT)

    print("API-News:")
    print("\n")
    print(text)
    print("\n")
    print("Simple Len_Text:",len(text))
    print("\n")

    print ("\n Abstractive_gensim_summary:\n",Abstractive_gensim_summary)
    print ("\n Abstractive_lexrank_summary\n",Abstractive_lexrank_summary)
    print ("\n Abstractive_lsa_summary\n",Abstractive_lsa_summary)
    print ("\n Abstractive_luhn_summary\n",Abstractive_luhn_summary)
    f=open("id.txt",'r')
    fid=f.read()
    f.close()
    f = open(java_path+fid+".txt","w")
    print(Abstractive_lexrank_summary, file = f)
    f.close()
    print("\n")

    print("Display the Len of Abstractive Summary:")
    print("\n")
    print("Abstractive_gensim_summary:",len(Abstractive_gensim_summary))
    print("Abstractive_lexrank_summary:",len(Abstractive_lexrank_summary))
    print("Abstractive_lsa_summary:",len(Abstractive_lsa_summary))
    print("Abstractive_luhn_summary:",len(Abstractive_luhn_summary))
    f=open('summary_data/'+fn+".txt",'w')
    f.write(Abstractive_gensim_summary)
    f.close()
    language = 'en'
    #speech = gTTS(text = Abstractive_lexrank_summary, lang = language, slow = False)
    
    #speech.save('summary_data/'+fn+".mp3")
    
    

if __name__ == '__main__':
    TestData="summary_test"
    while True:
        for(direcpath,direcnames,files) in os.walk(TestData):
            for file in files:
                if 'txt' in file:        
                    print(file)





                    time.sleep(1)
                    filename= TestData +'/'+ file
                    print('Filename:',filename)  
                    fn=file[:-4]
                    print('fn',fn)
                    clf = main(filename,fn)
                    
                    os.remove(filename)
            
           
