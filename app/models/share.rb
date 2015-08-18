require 'nokogiri'
require 'open-uri'

class Share < ActiveRecord::Base
  has_many :share_actions
  has_many :user_shares
  #has_many :users, through :user_shares

  def first_time_load!
    doc = Nokogiri::HTML(open(self.website_address))

    self.update_attributes(
      issued_by:  doc.css('div.dictionary-screen dd').children[0].text,
      isin: doc.css('div.dictionary-screen dd').children[1].text,
      security_type:  doc.css('div.dictionary-screen dd').children[2].text,
      sector:  doc.css('div.dictionary-screen dd').children[3].text
    )

  end


  def load_share_data

    doc = Nokogiri::HTML(open(self.website_address))

    #screen scrape website
    ShareAction.create(
      share_id: self.id,
      current_value: money_to_float(doc.css('span.value').text),
      trading_status: doc.css('section.mini-table-screen table tr').children[3].text,
      trades: doc.css('section.mini-table-screen table tr').children[8].text,
      value: money_to_float(doc.css('section.mini-table-screen table tr').children[13].text),
      volume: doc.css('section.mini-table-screen table tr').children[18].text,
      capitalisation: money_to_float(doc.css('section.mini-table-screen table tr').children[23].text),
      open: money_to_float(doc.css('section.mini-table-screen table tr').children[28].text),
      high: money_to_float(doc.css('section.mini-table-screen table tr').children[33].text),
      low: money_to_float(doc.css('section.mini-table-screen table tr').children[38].text),
      high_bid: money_to_float(doc.css('section.mini-table-screen table tr').children[43].text),
      low_offer: money_to_float(doc.css('section.mini-table-screen table tr').children[48].text),
      shares_issued: doc.css('section.mini-table-screen table tr').children[53].text,
      gross_div_yield: doc.css('section.mini-table-screen table tr').children[58].text,
      nta: money_to_float(doc.css('section.mini-table-screen table tr').children[63].text),
      eps: money_to_float(doc.css('section.mini-table-screen table tr').children[68].text),
      pe: doc.css('section.mini-table-screen table tr').children[73].text,
      week_change: doc.css('#price-info span.info-movement').text,
      year_change: doc.css('#price-info span.positive-movement').text
    )

  end

  def money_to_float(money)
    if money
      money[1, money.length].to_f
    end
  end

end
