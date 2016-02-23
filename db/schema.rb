# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160223220933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "imports", force: :cascade do |t|
    t.string   "PARCELID"
    t.string   "HLF1CHG"
    t.string   "HLF2CHG"
    t.string   "HLF1RED"
    t.string   "HLF2RED"
    t.string   "HLF1ADJ"
    t.string   "HLF2ADJ"
    t.string   "HLF1RLBK"
    t.string   "HLF2RLBK"
    t.string   "HLF1HMSD"
    t.string   "HLF2HMSD"
    t.string   "HLF1HMRB"
    t.string   "HLF2HMRB"
    t.string   "HLF1PEN"
    t.string   "HLF2PEN"
    t.string   "HLF1SPASMTS"
    t.string   "HLF2SPASMTS"
    t.string   "FULLYRAMTDUE"
    t.string   "NETDELQ"
    t.string   "HLF1AMTDUE"
    t.string   "HLF2AMTDUE"
    t.string   "HLF1DAYCRDT"
    t.string   "HLF2DAYCRDT"
    t.string   "PARCELLOCATION"
    t.string   "LEGAL1"
    t.string   "LEGAL2"
    t.string   "LEGAL3"
    t.string   "ACRES"
    t.string   "TXDST"
    t.string   "CLS"
    t.string   "LUC"
    t.string   "AGLAND"
    t.string   "TAXABLELAND"
    t.string   "TAXABLEBLDG"
    t.string   "TAXABLETOTAL"
    t.string   "ASMTLAND"
    t.string   "ASMTBLDG"
    t.string   "PUBLICUTILITY"
    t.string   "ROLLTYPE"
    t.string   "ASMTTOTAL"
    t.string   "OWNERNAME1"
    t.string   "OWNERNAME2"
    t.string   "MAILINGNAME1"
    t.string   "MAILINGNAME2"
    t.string   "PADDR1"
    t.string   "PADDR2"
    t.string   "PADDR3"
    t.string   "MORTCO"
    t.string   "NBHD"
    t.string   "ASMTWEN"
    t.string   "AC"
    t.string   "HMSDLAND"
    t.string   "HMSDBLDG"
    t.string   "FRCLSR"
    t.string   "SALESDTE"
    t.string   "PRICE"
    t.string   "YRBL"
    t.string   "GROSSRATE"
    t.string   "EFFRATE"
    t.string   "REDRATE"
    t.string   "DUEDATE"
    t.string   "CERTDLQYR"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "HLF1PN"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "state"
    t.integer  "records"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testing_local_apps", force: :cascade do |t|
    t.string   "something"
    t.string   "somethingelse"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
