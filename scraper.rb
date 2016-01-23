#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

names = (WikiData::Category.new('Kategooria:XIII_Riigikogu_liikmed', 'et').member_titles +
        WikiData::Category.new('Kategooria:XII_Riigikogu_liikmed', 'et').member_titles).uniq
EveryPolitician::Wikidata.scrape_wikidata(names: { et: names }, output: false)
warn EveryPolitician::Wikidata.notify_rebuilder

