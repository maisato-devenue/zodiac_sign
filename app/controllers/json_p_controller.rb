class JsonPController < ApplicationController
  def parse
    month = params[:month]
    date = params[:date]
    if month.negative? || date.negative?
      render status 400, json: {'detail': '負の数値が含まれています。'}
    end
    if month.length && date.length > 2
      render status 400, json: {'detail': '無効な数値です。'}
    end
    if date.length == 1
      '0' + date.to_s
    end
    aries = ('0321'..'0419')
    taurus = (420..520)
    gemini = (521..621)
    canser = (622..722)
    leo = (723..822)
    virgo = (823..922)
    libra = (923..1023)
    scopio = (1024..1122)
    sagittarius = (1123..1221)
    capricorn_f = ('1222'..'1231')
    caprocorn_l = (101..119)
    aquarius = (120..218)
    pisces = (219..320)
    array = []
    for s_num in aries do
      array.push(s_num)
    end
    date = '0322'
    # render status: 200, json: {month: month, date: date}
    render status: 200, json: {'a': date.between?('0321','0419') }
  end
end
