# modules_within_modules

module FileManagement
  # file_management/csv/reader.rb
  module CSV
    class Reader
      # class that deals wirh CSV files
    end
  end
  
  # file_management/excel/reader.rb
  module Excel
    class Reader
      # deals with excel files
    end
  end
end

FileManagement::CSV::Reader.new # таким образом обращаемся к модулю CSV внутри модуля FileManagement. А в CSV модуле обращаемся к классу
FileManagement::Excel::Reader::new # аналогично для модуля excel.
# в данном случае  Reader - разные классы в каждом модуле
