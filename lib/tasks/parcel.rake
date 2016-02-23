require 'csv'
namespace :parcel do
  desc "TODO"
  task import: :environment do
    data = File.read("public/import.csv")
    puts 'Parsing the CSV file'
    columns = [:PARCELID, :HLF1CHG, :HLF2CHG, :HLF1RED, :HLF2RED, :HLF1ADJ, :HLF2ADJ, :HLF1RLBK, :HLF2RLBK, :HLF1HMSD, :HLF2HMSD,
               :HLF1HMRB, :HLF2HMRB, :HLF1PN, :HLF2PEN, :HLF1SPASMTS, :HLF2SPASMTS, :FULLYRAMTDUE, :NETDELQ, :HLF1AMTDUE, :HLF2AMTDUE,
               :HLF1DAYCRDT, :HLF2DAYCRDT, :PARCELLOCATION, :LEGAL1, :LEGAL2, :LEGAL3, :ACRES, :TXDST, :CLS, :LUC, :AGLAND,
               :TAXABLELAND, :TAXABLEBLDG, :TAXABLETOTAL, :ASMTLAND, :ASMTBLDG, :PUBLICUTILITY, :ROLLTYPE, :ASMTTOTAL, :OWNERNAME1,
               :OWNERNAME2, :MAILINGNAME1, :MAILINGNAME2, :PADDR1, :PADDR2, :PADDR3, :MORTCO, :NBHD, :ASMTWEN, :AC, :HMSDLAND,
               :HMSDBLDG, :FRCLSR, :SALESDTE, :PRICE, :YRBL, :GROSSRATE, :EFFRATE, :REDRATE, :DUEDATE, :CERTDLQYR]

    csv = CSV.parse(data).map {|a| Hash[ columns.zip(a.collect{|x| x.strip || x }) ] }
    Import.delete_all
    puts 'Loading it into the database...  This could be a while'
    Import.transaction do
      csv.each do |input|
        Import.create(input)
      end
    end
  end

end
