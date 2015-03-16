require_relative 'require'

class Whoa < Sinatra::Base

  configure do
    enable :logging
  end

  get '/:key/?' do
    if flow_whoa params[:key]
      erb :whoa, locals: {
        whoa: flow_whoa(params[:key]),
        key: params[:key],
        start: whoa_times(params[:key]).first,
        stop: whoa_times(params[:key]).last  }
    else
      redirect to '/'
    end
  end

  get '/' do
    key = any_whoa
    erb :whoa, locals: {
      whoa: flow_whoa(key),
      key: key,
      start: whoa_times(key).first,
      stop: whoa_times(key).last  }
  end

  def whoa
    {
      shit: 'yo, when you see something ill - know what I mean - that shit is',
      anythingill: 'anything ill you see is',
      big6: "nigga, have a big 6 at the curb, that's",
      uptown: "I had this bad bitch Uptown, she was",
      inthehead: "had me fucked up in the head, I mean",
      diamonds: "bought the bitch diamonds and pearls, I mean",
      shitsshining: "shoulda seen them shits shining on her wrist,",
      money: "now money ain't a problem, see my dough is like",
      bankroll: "fulled out my bankroll on y'all niggas like",
      shrimp: "floss the blue shrimp from two-tenth like",
      brakes: "had to hit the brakes on y'all niggas like",
      pulled: "niggas getting pulled on my block like",
      home: "coming home within a half an hour like",
      fronting: "fronting like they had the manpower like",
      porsche: "come through in the Porsche slow like",
      nitro: "my niggas, like dough, light 'dro, nitro, might flow, nice clothes like",
      cocaine: "ease pain with cocaine like",
      docstrange: "now I'm Doc Strange in the Range like",
      hundredmph: "hundred miles an hour, switching lanes like",
      brain: "plus I'm getting brain from this chick like",
      finger: "finger near a nigga asshole like",
      floss: "scene floss riches and bitches like",
      benzcoupe: "99 Jag Benz Coupe like",
      cheeselines: "keep them cheese lines on your blocks like",
      grenade: "grenade through your window bitch, like",
      love: "love to see me do this shit, like",
      putmethrough: "niggas put me through this shit, like",
      toetotoe: "so I'mma go toe-to-toe, blow-for-blow like",
      bagit: "we bag it, then flip it like",
      stripit: "cars we jack it then strip it like",
      equipit: "fully equip it, front to back, like",
      spitting: "spitting on fiends that come for crack like",
      shorts: "asking for shorts and shit, nigga like",
      crunk: "half on his crunk, now nigga, that's",
      flowproperly: "flow so properly you'll see I'm",
      nostopping: "ain't no stopping me, I'm deep like",
      popping: "guns be popping, B, we creep like",
      hearmyname: "hear my name in these streets, it's like",
      concrete: "must I pound the concrete like",
      fill: "fill his bitch ass, head to feet like",
      yourman: "your man ain't",
      judge: "the judge ain't",
      cos: "C.O's ain't",
      pos: "P.O's ain't",
      gijoe: "play y'all self, I get the G.I. Joe; D I C K riders ain't",
      va: "niggas getting money in VA is",
      atl: "honies looking right in ATL is",
      chitown: "niggas pimping hoes in Chi-Town is",
      la: "bitches taking paper in L.A. is",
      dc: "niggas stacking dough in D.C. is",
      prdr: "P.R. D.R. hold me down like",
      detroit: "ballers in Detroit hold me down like",
      nola: "niggas in New Orleans getting money is",
      bostonjersey: "Boston and Jersey, mothafuckas is",
      floridaphilly: "Florida niggas and Philly niggas is",
      tampatexascleveland: "Tampa and Texas, Cleveland is",
      memphislilrock: "Memphis and Lil' Rock, my niggas is",
      panama: "Panama niggas they hold me down like",
      newyork: "my New York peoples they hold me down like",
      badboy: "Bad Boy nigga, word is bond, we",
      alumni: "alumni bitches, word is bond, we",
      ncsc: "N.C, S.C., mothafuckas is",
      buckwild: "my nigga Buckwild, word is bond he",
      story: "and that's just how the story go; and whoever I forgot on this shit is",
      eighthstreet: "8th Street, Life Story, Petey P, that nigga; the beat I got from big Buckwild is",
      onthemic: "that nigga Black Rob on the mic is",
      wholeflow: "my whole fucking flow on the mic is"
    }
  end

  def whoa_times( key )
    {
      shit: [4.7,9.8],
      anythingill: [10.4,12.4],
      big6: [13.1,16.2],
      uptown: [21,24.4],
      inthehead: [24.4,27.4],
      diamonds: [27,29.7],
      shitsshining: [30.6, 33.2],
      money: [32.2, 34.6],
      bankroll: [35.2, 38],
      shrimp: [38,40.6],
      brakes: [44.6, 47.2],
      pulled: [47.2, 49.8],
      home: [49.6, 52],
      fronting: [51.8, 54.4],
      porsche: [59.8, 62.4],
      nitro: [62.4, 68.2],
      cocaine: [68, 70.4],
      docstrange: [70, 72.6],
      hundredmph: [73.4, 76],
      brain: [76.2, 79],
      finger: [78.8, 81.6],
      floss: [81.4,84],
      benzcoupe: [84.5,87.3],
      cheeselines: [87,89.6],
      grenade: [90,92.8],
      love: [93.2,96],
      putmethrough: [95.5, 98.6],
      toetotoe: [97.4,100.4],
      bagit: [178.0,180.0],
      stripit: [180.4, 183.0],
      equipit: [183.3, 186.0],
      spitting: [186.4,189.2],
      shorts: [188.6, 190.6],
      crunk: [191.6, 194.2],
      flowproperly: [194.6, 197.2],
      nostopping: [197.2,200],
      popping: [200,203],
      hearmyname: [203,205.8],
      concrete: [205.4,208.0],
      fill: [208.8, 211],
      yourman: [211.0, 212.2],
      judge: [212.6,214],
      cos: [214,215.4],
      pos: [215.4, 217],
      gijoe: [217,222.2],
      va: [233.8, 236.2],
      atl: [236.2, 239],
      chitown: [238.6, 241.4],
      la: [242, 244.4],
      dc: [244.4, 247.2],
      prdr: [247.2, 250.2],
      detroit: [250.2, 253],
      nola: [252.6, 255.4],
      bostonjersey: [255.8, 258.4],
      floridaphilly: [258.6, 261.2],
      tampatexascleveland: [261.4, 264.2],
      memphislilrock: nil,
      panama: nil,
      newyork: nil,
      badboy: nil,
      alumni: nil,
      ncsc: nil,
      buckwild: nil,
      story: nil,
      eighthstreet: nil,
      onthemic: nil,
      wholeflow: nil
    }[key.to_sym] or [0, 0]
  end

  def flow_whoa( key )
    whoa[key.to_sym] if whoa.keys.include? key.to_sym
  end

  def any_whoa
    whoa.keys.sample
  end

end
