id=[7653,
6330,
6329,
6314,
7587,
7582,
6261,
6256,
6244,
6253,
6231,
6215,
6212,
6213]

@ekids = Ekid.where(id: id)
@ekids.each do |ek|
@client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_KEY"])
@client.messages.create(
to: "+60#{ek.mph}", 
from: ENV["TWILIO_PHONE_NO"], 
body: "\n\n MBI Selangor Incorporated 
\n Terima kasih kerana mendaftar untuk Program Saringan Percuma anjuran MBI Selangor (INC).
\n Tahniah! #{ek.name} telah disenaraipendek untuk proses pemilihan seterusnya. Untuk makluman, program seterusnya akan diadakan pada 22 September 2019 di Denai Alam.
\n Sila whatsapp maklumat dibawah kepada urusetia Program, Pn Rusmina Sukim di 019-6072688
\n 1. Nama Anak
\n 2. Umur Anak dan No MyKid
\n 3. No yang boleh dihubungi
\n TEMPAT ADALAH AMAT TERHAD. Terima kasih atas kerjasama anda."
)
end
