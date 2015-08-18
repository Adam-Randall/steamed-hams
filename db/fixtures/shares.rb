require 'nokogiri'
require 'open-uri'

puts 'Seeding Shares'
Share.seed(:id,
  {:name => "Abano Healthcare Group Limited Ordinary Shares", :code => "ABA", :website_address => "https://www.nzx.com/markets/NZSX/securities/ABA"},
  {:name => "Australian Foundation Investment Company Limited Ord Shares", :code => "AFI", :website_address => "https://www.nzx.com/markets/NZSX/securities/AFI"},
  {:name => "Auckland International Airport Limited Ordinary Shares", :code => "AIA", :website_address => "https://www.nzx.com/markets/NZSX/securities/AIA"},
  {:name => "Air New Zealand Limited (NS) Ordinary Shares", :code => "AIR", :website_address => "https://www.nzx.com/markets/NZSX/securities/AIR"},
  {:name => "Allied Farmers Limited Ordinary Shares", :code => "ALF", :website_address => "https://www.nzx.com/markets/NZSX/securities/ALF"},
  {:name => "AMP Limited Ordinary Shares", :code => "AMP", :website_address => "https://www.nzx.com/markets/NZSX/securities/AMP"},
  {:name => "Australia and New Zealand Banking Group Limited Ord Shares", :code => "ANZ", :website_address => "https://www.nzx.com/markets/NZSX/securities/ANZ"},
  {:name => "Aorere Resources Limited Ordinary Shares", :code => "AOR", :website_address => "https://www.nzx.com/markets/NZSX/securities/AOR"},
  {:name => "AOR 27/07/17 $2.981 Warrants", :code => "AORWA", :website_address => "https://www.nzx.com/markets/NZSX/securities/AORWA"},
  {:name => "The Asia Pacific Trust (NS) Units", :code => "APA", :website_address => "https://www.nzx.com/markets/NZSX/securities/APA"},
  {:name => "APN News & Media Limited Ordinary Shares", :code => "APN", :website_address => "https://www.nzx.com/markets/NZSX/securities/APN"},
  {:name => "Argosy Property Limited Ordinary Shares", :code => "ARG", :website_address => "https://www.nzx.com/markets/NZSX/securities/ARG"},
  {:name => "Arvida Group Limited (NS) Ordinary Shares", :code => "ARV", :website_address => "https://www.nzx.com/markets/NZSX/securities/ARV"},
  {:name => "ASB Capital Limited (NS) Preference Shares", :code => "ASBPA", :website_address => "https://www.nzx.com/markets/NZSX/securities/ASBPA"},
  {:name => "ASB Capital No.2 Limited (NS) Preference Shares", :code => "ASBPB", :website_address => "https://www.nzx.com/markets/NZSX/securities/ASBPB"},
  {:name => "Australian Dividend Index Trust (NS) Units", :code => "ASD", :website_address => "https://www.nzx.com/markets/NZSX/securities/ASD"},
  {:name => "Australian Financials Index Trust (NS) Units", :code => "ASF", :website_address => "https://www.nzx.com/markets/NZSX/securities/ASF"},
  {:name => "Australian Property Index Trust (NS) Units", :code => "ASP", :website_address => "https://www.nzx.com/markets/NZSX/securities/ASP"},
  {:name => "Australian Resources Index Trust (NS) Units", :code => "ASR", :website_address => "https://www.nzx.com/markets/NZSX/securities/ASR"},
  {:name => "The a2 Milk Company Limited Ordinary Shares", :code => "ATM", :website_address => "https://www.nzx.com/markets/NZSX/securities/ATM"},
  {:name => "Augusta Capital Limited Ordinary Shares", :code => "AUG", :website_address => "https://www.nzx.com/markets/NZSX/securities/AUG"},
  {:name => "AWF Madison Group Limited Ordinary Shares", :code => "AWF", :website_address => "https://www.nzx.com/markets/NZSX/securities/AWF"},
  {:name => "Airwork Holdings Limited Ordinary Shares", :code => "AWK", :website_address => "https://www.nzx.com/markets/NZSX/securities/AWK"},
  {:name => "Briscoe Group Limited Ordinary Shares", :code => "BGR", :website_address => "https://www.nzx.com/markets/NZSX/securities/BGR"},
  {:name => "Bethunes Investments Limited Ordinary Shares", :code => "BIL", :website_address => "https://www.nzx.com/markets/NZSX/securities/BIL"},
  {:name => "The Bankers Investment Trust Plc Ordinary Units", :code => "BIT", :website_address => "https://www.nzx.com/markets/NZSX/securities/BIT"},
  {:name => "BLIS Technologies Limited Ordinary Shares", :code => "BLT", :website_address => "https://www.nzx.com/markets/NZSX/securities/BLT"},
  {:name => "Barramundi Limited Ordinary Shares", :code => "BRM", :website_address => "https://www.nzx.com/markets/NZSX/securities/BRM"},
  {:name => "Barramundi Limited 06/05/16 Warrants", :code => "BRMWC", :website_address => "https://www.nzx.com/markets/NZSX/securities/BRMWC"},
  {:name => "Cavalier Corporation Limited Ordinary Shares", :code => "CAV", :website_address => "https://www.nzx.com/markets/NZSX/securities/CAV"},
  {:name => "CDL Investments New Zealand Limited Ordinary Shares", :code => "CDI", :website_address => "https://www.nzx.com/markets/NZSX/securities/CDI"},
  {:name => "Contact Energy Limited Ordinary Shares", :code => "CEN", :website_address => "https://www.nzx.com/markets/NZSX/securities/CEN"},
  {:name => "The Colonial Motor Company Limited Ordinary Shares", :code => "CMO", :website_address => "https://www.nzx.com/markets/NZSX/securities/CMO"},
  {:name => "Chorus Limited (NS) Ordinary Shares", :code => "CNU", :website_address => "https://www.nzx.com/markets/NZSX/securities/CNU"},
  {:name => "Coats Group plc Ordinary Shares", :code => "COA", :website_address => "https://www.nzx.com/markets/NZSX/securities/COA"},
  {:name => "Comvita Limited Ordinary Shares", :code => "CVT", :website_address => "https://www.nzx.com/markets/NZSX/securities/CVT"},
  {:name => "Delegat Group Limited Ordinary Shares", :code => "DGL", :website_address => "https://www.nzx.com/markets/NZSX/securities/DGL"},
  {:name => "Diligent Corporation (NS) Ordinary Shares", :code => "DIL", :website_address => "https://www.nzx.com/markets/NZSX/securities/DIL"},
  {:name => "New Zealand Dividend Index Trust (NS) Units", :code => "DIV", :website_address => "https://www.nzx.com/markets/NZSX/securities/DIV"},
  {:name => "DNZ Property Fund Limited Ordinary Shares", :code => "DNZ", :website_address => "https://www.nzx.com/markets/NZSX/securities/DNZ"},
  {:name => "Downer EDI Limited Ordinary Shares", :code => "DOW", :website_address => "https://www.nzx.com/markets/NZSX/securities/DOW"},
  {:name => "Ebos Group Limited Ordinary Shares", :code => "EBO", :website_address => "https://www.nzx.com/markets/NZSX/securities/EBO"},
  {:name => "The Emerging Markets Trust (NS) Units", :code => "EMF", :website_address => "https://www.nzx.com/markets/NZSX/securities/EMF"},
  {:name => "EROAD Limited Ordinary Shares", :code => "ERD", :website_address => "https://www.nzx.com/markets/NZSX/securities/ERD"},
  {:name => "The Europe Trust (NS) Units", :code => "EUF", :website_address => "https://www.nzx.com/markets/NZSX/securities/EUF"},
  {:name => "The European Investment Trust plc Ordinary Units", :code => "EUT", :website_address => "https://www.nzx.com/markets/NZSX/securities/EUT"},
  {:name => "Evolve Education Group Limited Ordinary Shares", :code => "EVO", :website_address => "https://www.nzx.com/markets/NZSX/securities/EVO"},
  {:name => "Fletcher Building Limited Ordinary Shares", :code => "FBU", :website_address => "https://www.nzx.com/markets/NZSX/securities/FBU"},
  {:name => "Foreign & Colonial Investment Trust Plc Ordinary Units", :code => "FCT", :website_address => "https://www.nzx.com/markets/NZSX/securities/FCT"},
  {:name => "Finzsoft Solutions Limited Ordinary Shares", :code => "FIN", :website_address => "https://www.nzx.com/markets/NZSX/securities/FIN"},
  {:name => "Fliway Group Limited Ordinary Shares", :code => "FLI", :website_address => "https://www.nzx.com/markets/NZSX/securities/FLI"},
  {:name => "SmartFONZ", :code => "FNZ", :website_address => "https://www.nzx.com/markets/NZSX/securities/FNZ"},
  {:name => "Fisher & Paykel Healthcare Corporation Limited Ord Shares", :code => "FPH", :website_address => "https://www.nzx.com/markets/NZSX/securities/FPH"},
  {:name => "Freightways Limited Ordinary Shares", :code => "FRE", :website_address => "https://www.nzx.com/markets/NZSX/securities/FRE"},
  {:name => "Fonterra Shareholders' Fund Units", :code => "FSF", :website_address => "https://www.nzx.com/markets/NZSX/securities/FSF"},
  {:name => "Goodman Property Trust Ordinary Units", :code => "GMT", :website_address => "https://www.nzx.com/markets/NZSX/securities/GMT"},
  {:name => "Genesis Energy Limited Ordinary Shares", :code => "GNE", :website_address => "https://www.nzx.com/markets/NZSX/securities/GNE"},
  {:name => "Gentrack Group Limited Ordinary Shares", :code => "GTK", :website_address => "https://www.nzx.com/markets/NZSX/securities/GTK"},
  {:name => "Green Cross Health Limited Ordinary Shares", :code => "GXH", :website_address => "https://www.nzx.com/markets/NZSX/securities/GXH"},
  {:name => "Hellaby Holdings Limited Ordinary Shares", :code => "HBY", :website_address => "https://www.nzx.com/markets/NZSX/securities/HBY"},
  {:name => "Henderson Far East Income Limited Ordinary Shares", :code => "HFL", :website_address => "https://www.nzx.com/markets/NZSX/securities/HFL"},
  {:name => "Hallenstein Glasson Holdings Limited Ordinary Shares", :code => "HLG", :website_address => "https://www.nzx.com/markets/NZSX/securities/HLG"},
  {:name => "Heartland New Zealand Limited Ordinary Shares", :code => "HNZ", :website_address => "https://www.nzx.com/markets/NZSX/securities/HNZ"},
  {:name => "Infratil Limited Ordinary Shares", :code => "IFT", :website_address => "https://www.nzx.com/markets/NZSX/securities/IFT"},
  {:name => "ikeGPS Group Limited (NS) Ordinary Shares", :code => "IKE", :website_address => "https://www.nzx.com/markets/NZSX/securities/IKE"},
  {:name => "Intueri Education Group Limited Ordinary Shares", :code => "IQE", :website_address => "https://www.nzx.com/markets/NZSX/securities/IQE"},
  {:name => "JPMorgan Japanese Investment Trust Plc Ord Shares", :code => "JFJ", :website_address => "https://www.nzx.com/markets/NZSX/securities/JFJ"},
  {:name => "JPMorgan Overseas Investment Trust plc", :code => "JMO", :website_address => "https://www.nzx.com/markets/NZSX/securities/JMO"},
  {:name => "JMO 30/10/15 Subscription Shares", :code => "JMOOA", :website_address => "https://www.nzx.com/markets/NZSX/securities/JMOOA"},
  {:name => "Kingfish Limited Ordinary Shares", :code => "KFL", :website_address => "https://www.nzx.com/markets/NZSX/securities/KFL"},
  {:name => "Kingfish Limited 06/11/15 Warrants", :code => "KFLWC", :website_address => "https://www.nzx.com/markets/NZSX/securities/KFLWC"},
  {:name => "Kathmandu Holdings Limited Ordinary Shares", :code => "KMD", :website_address => "https://www.nzx.com/markets/NZSX/securities/KMD"},
  {:name => "Kiwi Property Group Limited Ordinary Shares", :code => "KPG", :website_address => "https://www.nzx.com/markets/NZSX/securities/KPG"},
  {:name => "Kirkcaldie & Stains Limited Ordinary Shares", :code => "KRK", :website_address => "https://www.nzx.com/markets/NZSX/securities/KRK"},
  {:name => "Energy Mad Limited Ordinary Shares", :code => "MAD", :website_address => "https://www.nzx.com/markets/NZSX/securities/MAD"},
  {:name => "Millennium & Copthorne Hotels NZ Limited Ordinary Shares", :code => "MCK", :website_address => "https://www.nzx.com/markets/NZSX/securities/MCK"},
  {:name => "Millennium & Copthorne Hotels NZ Limited Pref Shares", :code => "MCKPA", :website_address => "https://www.nzx.com/markets/NZSX/securities/MCKPA"},
  {:name => "SmartMIDZ", :code => "MDZ", :website_address => "https://www.nzx.com/markets/NZSX/securities/MDZ"},
  {:name => "Meridian Energy Limited (NS) Ordinary Shares", :code => "MEL", :website_address => "https://www.nzx.com/markets/NZSX/securities/MEL"},
  {:name => "Metlifecare Limited Ordinary shares", :code => "MET", :website_address => "https://www.nzx.com/markets/NZSX/securities/MET"},
  {:name => "Mainfreight Limited Ordinary Shares", :code => "MFT", :website_address => "https://www.nzx.com/markets/NZSX/securities/MFT"},
  {:name => "Mercer Group Limited Ordinary Shares", :code => "MGL", :website_address => "https://www.nzx.com/markets/NZSX/securities/MGL"},
  {:name => "Michael Hill International Limited Ordinary Shares", :code => "MHI", :website_address => "https://www.nzx.com/markets/NZSX/securities/MHI"},
  {:name => "Marlin Global Limited Ordinary Shares", :code => "MLN", :website_address => "https://www.nzx.com/markets/NZSX/securities/MLN"},
  {:name => "Marlin Global Limited 05/08/16 Warrants", :code => "MLNWB", :website_address => "https://www.nzx.com/markets/NZSX/securities/MLNWB"},
  {:name => "Marsden Maritime Holdings Limited (NS) Ordinary Shares", :code => "MMH", :website_address => "https://www.nzx.com/markets/NZSX/securities/MMH"},
  {:name => "Moa Group Limited Ordinary Shares", :code => "MOA", :website_address => "https://www.nzx.com/markets/NZSX/securities/MOA"},
  {:name => "Metro Performance Glass Limited Ordinary Shares", :code => "MPG", :website_address => "https://www.nzx.com/markets/NZSX/securities/MPG"},
  {:name => "Mighty River Power Limited Ordinary Shares", :code => "MRP", :website_address => "https://www.nzx.com/markets/NZSX/securities/MRP"},
  {:name => "Methven Limited Ordinary Shares", :code => "MVN", :website_address => "https://www.nzx.com/markets/NZSX/securities/MVN"},
  {:name => "Mercantile Investment Company Limited Ordinary Shares", :code => "MVT", :website_address => "https://www.nzx.com/markets/NZSX/securities/MVT"},
  {:name => "SmartMOZY", :code => "MZY", :website_address => "https://www.nzx.com/markets/NZSX/securities/MZY"},
  {:name => "NPT Limited Ordinary Shares", :code => "NPT", :website_address => "https://www.nzx.com/markets/NZSX/securities/NPT"},
  {:name => "Nuplex Industries Limited Ordinary Shares", :code => "NPX", :website_address => "https://www.nzx.com/markets/NZSX/securities/NPX"},
  {:name => "New Talisman Gold Mines Limited Ordinary Shares", :code => "NTL", :website_address => "https://www.nzx.com/markets/NZSX/securities/NTL"},
  {:name => "NTL 28/11/17 AUD $0.02 Options", :code => "NTLOA", :website_address => "https://www.nzx.com/markets/NZSX/securities/NTLOA"},
  {:name => "NZ Windfarms Limited Ordinary Shares", :code => "NWF", :website_address => "https://www.nzx.com/markets/NZSX/securities/NWF"},
  {:name => "NZF Group Limited (Administrators Appointed) Ordinary Shares", :code => "NZF", :website_address => "https://www.nzx.com/markets/NZSX/securities/NZF"},
  {:name => "New Zealand Oil & Gas Limited Ordinary Shares", :code => "NZO", :website_address => "https://www.nzx.com/markets/NZSX/securities/NZO"},
  {:name => "The New Zealand Refining Company Limited Ordinary Shares", :code => "NZR", :website_address => "https://www.nzx.com/markets/NZSX/securities/NZR"},
  {:name => "NZX Limited Ordinary Shares", :code => "NZX", :website_address => "https://www.nzx.com/markets/NZSX/securities/NZX"},
  {:name => "OceanaGold Corporation (NS) Ordinary Shares", :code => "OGC", :website_address => "https://www.nzx.com/markets/NZSX/securities/OGC"},
  {:name => "Orion Health Group Limited Ordinary Shares", :code => "OHE", :website_address => "https://www.nzx.com/markets/NZSX/securities/OHE"},
  {:name => "Opus International Consultants Limited Ordinary Shares", :code => "OIC", :website_address => "https://www.nzx.com/markets/NZSX/securities/OIC"},
  {:name => "SmartOZZY", :code => "OZY", :website_address => "https://www.nzx.com/markets/NZSX/securities/OZY"},
  {:name => "Pushpay Holdings Limited Ordinary Shares", :code => "PAY", :website_address => "https://www.nzx.com/markets/NZSX/securities/PAY"},
  {:name => "Pacific Brands Limited Ordinary Shares", :code => "PBG", :website_address => "https://www.nzx.com/markets/NZSX/securities/PBG"},
  {:name => "Precinct Properties New Zealand Limited Ordinary Shares", :code => "PCT", :website_address => "https://www.nzx.com/markets/NZSX/securities/PCT"},
  {:name => "Pacific Edge Limited Ordinary Shares", :code => "PEB", :website_address => "https://www.nzx.com/markets/NZSX/securities/PEB"},
  {:name => "Property For Industry Limited Ordinary Shares", :code => "PFI", :website_address => "https://www.nzx.com/markets/NZSX/securities/PFI"},
  {:name => "Property for Industry Limited - PFIRG Rights", :code => "PFIRG", :website_address => "https://www.nzx.com/markets/NZSX/securities/PFIRG"},
  {:name => "Pyne Gould Corporation Limited", :code => "PGC", :website_address => "https://www.nzx.com/markets/NZSX/securities/PGC"},
  {:name => "PGG Wrightson Limited Ordinary Shares", :code => "PGW", :website_address => "https://www.nzx.com/markets/NZSX/securities/PGW"},
  {:name => "Promisia Integrative Limited Ordinary Shares", :code => "PIL", :website_address => "https://www.nzx.com/markets/NZSX/securities/PIL"},
  {:name => "Port of Tauranga Limited (NS) Ordinary Shares", :code => "POT", :website_address => "https://www.nzx.com/markets/NZSX/securities/POT"},
  {:name => "Pumpkin Patch Limited Ordinary Shares", :code => "PPL", :website_address => "https://www.nzx.com/markets/NZSX/securities/PPL"},
  {:name => "Pan Pacific Petroleum NL Ordinary Shares", :code => "PPP", :website_address => "https://www.nzx.com/markets/NZSX/securities/PPP"},
  {:name => "Rakon Limited Ordinary Shares", :code => "RAK", :website_address => "https://www.nzx.com/markets/NZSX/securities/RAK"},
  {:name => "Rubicon Limited Ordinary Shares", :code => "RBC", :website_address => "https://www.nzx.com/markets/NZSX/securities/RBC"},
  {:name => "Restaurant Brands NZ Limited Ordinary Shares", :code => "RBD", :website_address => "https://www.nzx.com/markets/NZSX/securities/RBD"},
  {:name => "Ryman Healthcare Limited Ordinary Shares", :code => "RYM", :website_address => "https://www.nzx.com/markets/NZSX/securities/RYM"},
  {:name => "Sanford Limited Ordinary Shares", :code => "SAN", :website_address => "https://www.nzx.com/markets/NZSX/securities/SAN"},
  {:name => "Scales Corporation Limited Ordinary Shares", :code => "SCL", :website_address => "https://www.nzx.com/markets/NZSX/securities/SCL"},
  {:name => "Scott Technology Limited Ordinary Shares", :code => "SCT", :website_address => "https://www.nzx.com/markets/NZSX/securities/SCT"},
  {:name => "Smiths City Group Limited Ordinary Shares", :code => "SCY", :website_address => "https://www.nzx.com/markets/NZSX/securities/SCY"},
  {:name => "SeaDragon Limited Ordinary Shares", :code => "SEA", :website_address => "https://www.nzx.com/markets/NZSX/securities/SEA"},
  {:name => "SeaDragon Limited- SEARA Rights", :code => "SEARA", :website_address => "https://www.nzx.com/markets/NZSX/securities/SEARA"},
  {:name => "Seeka Kiwifruit Industries Limited Ordinary Shares", :code => "SEK", :website_address => "https://www.nzx.com/markets/NZSX/securities/SEK"},
  {:name => "SKYCITY Entertainment Group Limited (NS) Ordinary Shares", :code => "SKC", :website_address => "https://www.nzx.com/markets/NZSX/securities/SKC"},
  {:name => "Skellerup Holdings Limited Ordinary Shares", :code => "SKL", :website_address => "https://www.nzx.com/markets/NZSX/securities/SKL"},
  {:name => "Serko Limited Ordinary Shares", :code => "SKO", :website_address => "https://www.nzx.com/markets/NZSX/securities/SKO"},
  {:name => "Sky Network Television Limited Ordinary Shares", :code => "SKT", :website_address => "https://www.nzx.com/markets/NZSX/securities/SKT"},
  {:name => "Sealegs Corporation Limited Ordinary Shares", :code => "SLG", :website_address => "https://www.nzx.com/markets/NZSX/securities/SLG"},
  {:name => "SLI Systems Limited Ordinary Shares", :code => "SLI", :website_address => "https://www.nzx.com/markets/NZSX/securities/SLI"},
  {:name => "Synlait Milk Limited (NS) Ordinary Shares", :code => "SML", :website_address => "https://www.nzx.com/markets/NZSX/securities/SML"},
  {:name => "Spark New Zealand Limited Ordinary Shares", :code => "SPK", :website_address => "https://www.nzx.com/markets/NZSX/securities/SPK"},
  {:name => "South Port New Zealand Limited (NS) Ordinary Shares", :code => "SPN", :website_address => "https://www.nzx.com/markets/NZSX/securities/SPN"},
  {:name => "Smartpay Holdings Limited Ordinary Shares", :code => "SPY", :website_address => "https://www.nzx.com/markets/NZSX/securities/SPY"},
  {:name => "Steel & Tube Holdings Limited Ordinary Shares", :code => "STU", :website_address => "https://www.nzx.com/markets/NZSX/securities/STU"},
  {:name => "Summerset Group Holdings Limited Ordinary Shares", :code => "SUM", :website_address => "https://www.nzx.com/markets/NZSX/securities/SUM"},
  {:name => "The City of London Investment Trust Plc Ordinary Shares", :code => "TCL", :website_address => "https://www.nzx.com/markets/NZSX/securities/TCL"},
  {:name => "Templeton Emerging Markets Investment Trust Plc Ord Shares", :code => "TEM", :website_address => "https://www.nzx.com/markets/NZSX/securities/TEM"},
  {:name => "Tenon Limited Ordinary Shares", :code => "TEN", :website_address => "https://www.nzx.com/markets/NZSX/securities/TEN"},
  {:name => "T&G Global Limited Ordinary Shares", :code => "TGG", :website_address => "https://www.nzx.com/markets/NZSX/securities/TGG"},
  {:name => "Tourism Holdings Limited Ordinary Shares", :code => "THL", :website_address => "https://www.nzx.com/markets/NZSX/securities/THL"},
  {:name => "Trilogy International Limited Ordinary Shares", :code => "TIL", :website_address => "https://www.nzx.com/markets/NZSX/securities/TIL"},
  {:name => "Telstra Corporation Limited Ordinary Shares", :code => "TLS", :website_address => "https://www.nzx.com/markets/NZSX/securities/TLS"},
  {:name => "Trade Me Group Limited Ordinary Shares", :code => "TME", :website_address => "https://www.nzx.com/markets/NZSX/securities/TME"},
  {:name => "Turners Limited Ordinary Shares", :code => "TNR", :website_address => "https://www.nzx.com/markets/NZSX/securities/TNR"},
  {:name => "SmartTENZ", :code => "TNZ", :website_address => "https://www.nzx.com/markets/NZSX/securities/TNZ"},
  {:name => "Transpacific Industries Group Ltd Ordinary Shares", :code => "TPI", :website_address => "https://www.nzx.com/markets/NZSX/securities/TPI"},
  {:name => "Trustpower Limited Ordinary Shares", :code => "TPW", :website_address => "https://www.nzx.com/markets/NZSX/securities/TPW"},
  {:name => "TRS Investments Limited", :code => "TRS", :website_address => "https://www.nzx.com/markets/NZSX/securities/TRS"},
  {:name => "TeamTalk Limited Ordinary Shares", :code => "TTK", :website_address => "https://www.nzx.com/markets/NZSX/securities/TTK"},
  {:name => "The Total World Trust (NS) Units", :code => "TWF", :website_address => "https://www.nzx.com/markets/NZSX/securities/TWF"},
  {:name => "Tower Limited Ordinary Shares", :code => "TWR", :website_address => "https://www.nzx.com/markets/NZSX/securities/TWR"},
  {:name => "The US 500 Trust (NS) Units", :code => "USF", :website_address => "https://www.nzx.com/markets/NZSX/securities/USF"},
  {:name => "The US Large Growth Trust (NS) Units", :code => "USG", :website_address => "https://www.nzx.com/markets/NZSX/securities/USG"},
  {:name => "The US Mid Cap Trust (NS) Units", :code => "USM", :website_address => "https://www.nzx.com/markets/NZSX/securities/USM"},
  {:name => "The US Small Cap Trust (NS) Units", :code => "USS", :website_address => "https://www.nzx.com/markets/NZSX/securities/USS"},
  {:name => "The US Large Value Trust (NS) Units", :code => "USV", :website_address => "https://www.nzx.com/markets/NZSX/securities/USV"},
  {:name => "Vector Limited Ordinary Shares", :code => "VCT", :website_address => "https://www.nzx.com/markets/NZSX/securities/VCT"},
  {:name => "Vista Group International Limited Ordinary Shares", :code => "VGL", :website_address => "https://www.nzx.com/markets/NZSX/securities/VGL"},
  {:name => "Vital Healthcare Property Trust Ordinary Units", :code => "VHP", :website_address => "https://www.nzx.com/markets/NZSX/securities/VHP"},
  {:name => "Veritas Investments Limited - Ordinary Shares", :code => "VIL", :website_address => "https://www.nzx.com/markets/NZSX/securities/VIL"},
  {:name => "Westpac Banking Corporation Ordinary Shares", :code => "WBC", :website_address => "https://www.nzx.com/markets/NZSX/securities/WBC"},
  {:name => "Wellington Drive Technologies Limited Ordinary Shares", :code => "WDT", :website_address => "https://www.nzx.com/markets/NZSX/securities/WDT"},
  {:name => "Wellington Drive Technologies Limited Conv Pref Shares", :code => "WDTPA", :website_address => "https://www.nzx.com/markets/NZSX/securities/WDTPA"},
  {:name => "The Warehouse Group Limited Ordinary Shares", :code => "WHS", :website_address => "https://www.nzx.com/markets/NZSX/securities/WHS"},
  {:name => "Wynyard Group Limited Ordinary Shares", :code => "WYN", :website_address => "https://www.nzx.com/markets/NZSX/securities/WYN"},
  {:name => "Xero Limited Ordinary Shares", :code => "XRO", :website_address => "https://www.nzx.com/markets/NZSX/securities/XRO"},
  {:name => "Z Energy Limited Ordinary Shares", :code => "ZEL", :website_address => "https://www.nzx.com/markets/NZSX/securities/ZEL"}
)


puts 'Seeding further share details'
Share.all.each do | s | 
  s.first_time_load!
end
