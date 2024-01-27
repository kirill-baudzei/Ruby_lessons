# некоторые модули вызываются 

require "uri" # файл встроен в руби, мы его только вызываем
require "net/http"

p URI.class # Module
p Net.class # Module

uri = URI.parse("http://www.google.com")
p uri.class # URI::HTTP

p Net::HTTP.get(uri) # <!doctype html><html itemscope=\"\" itemtype=\ .... - получаем html код страницы
