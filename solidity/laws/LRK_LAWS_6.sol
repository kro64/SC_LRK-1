pragma solidity >=0.7.0 <0.8.6;

contract LRK_LAWS_6 {

    string[] public laws = [
    "",
    hex"5265737075626c696b6f73205072657a6964656e746173207972612076616c73747962c49773207661646f7661732e0a4a697320617473746f7661756a61204c69657475766f732076616c737479626569206972206461726f20766973612c206b6173206a616d2070617665737461204b6f6e737469747563696a6f7320697220c4af73746174796dc5b32e",
    hex"5265737075626c696b6f73205072657a6964656e74752067616c692062c5ab74692072656e6b616d6173204c69657475766f732070696c696574697320706167616c206b696c6dc4992c206e65206d61c5be696175206b616970207472656a757320706173746172756f73697573206d6574757320677976656ec49973204c69657475766f6a652c206a65696775206a616d20696b692072696e6b696dc5b3206469656e6f7320797261207375c4976ac499206e65206d61c5be696175206b616970206b657475726961736465c5a1696d74206d6574c5b3206972206a65696775206a69732067616c692062c5ab74692072656e6b616d6173205365696d6f206e617269752e0a5265737075626c696b6f73205072657a6964656e74c4852072656e6b61204c69657475766f73205265737075626c696b6f732070696c6965c48d6961692070656e6b657269656d73206d6574616d732c2072656d64616d6965736920766973756f74696e652c206c796769612069722074696573696f67696e652072696e6b696dc5b32074656973652c20736c617074752062616c736176696d752e0a54617320706174732061736d756f205265737075626c696b6f73205072657a6964656e74752067616c692062c5ab74692072656e6b616d6173206e652064617567696175206b616970206475206b61727475732069c5a12065696cc497732e",
    hex"4b616e64696461747520c4af205265737075626c696b6f73205072657a6964656e74757320c4af72656769737472756f6a616d6173204c69657475766f73205265737075626c696b6f732070696c69657469732c2061746974696e6b616e74697320373820737472616970736e696f207069726d6f73696f732064616c6965732073c4856c7967617320697220737572696e6bc49973206e65206d61c5be696175206b6169702032302074c5ab6b7374616ec48d69c5b32072696e6bc4976ac5b32070617261c5a1c5b32e0a4b616e6469646174c5b320c4af205265737075626c696b6f73205072657a6964656e746f2076696574c48520736b6169c48d697573206e657269626f6a616d61732e",
    hex"5265737075626c696b6f73205072657a6964656e746f2065696c696e6961692072696e6b696d61692076796b646f6d69207061736b7574696ec4af2073656b6d616469656ec4af206c696b757320647669656d206dc4976e657369616d7320696b69205265737075626c696b6f73205072657a6964656e746f206b6164656e63696a6f73207061626169676f732e",
    hex"49c5a172696e6b7475206c61696b6f6d617320746173206b616e6469646174617320c4af205265737075626c696b6f73205072657a6964656e746f2076696574c4852c206b75726973207069726dc485206b617274c4852062616c73756f6a616e742069722064616c797661756a616e74206e65206d61c5be696175206b61697020707573656920766973c5b32072696e6bc4976ac5b32c206761766f2064617567696175206b61697020707573c49920766973c5b32072696e6b696d756f73652064616c79766176757369c5b32072696e6bc4976ac5b32062616c73c5b32e204a656967752072696e6b696d756f73652064616c797661766f206d61c5be696175206b61697020707573c49720766973c5b32072696e6bc4976ac5b32c2069c5a172696e6b7475206c61696b6f6d617320746173206b616e646964617461732c206b75726973206761766f20646175676961757369612c20626574206e65206d61c5be696175206b61697020312f3320766973c5b32072696e6bc4976ac5b32062616c73c5b32e0a4a65696775207069726d616a616d652062616c736176696d6f2072617465206ec497207669656e6173206b616e64696461746173206e65737572656e6b61207265696b69616d6f732062616c73c5b32064617567756d6f732c20706f20647669656ac5b3207361766169c48d69c5b32072656e6769616d61732070616b6172746f74696e69732062616c736176696d61732064c4976c20647669656ac5b3206b616e6469646174c5b32c20676176757369c5b320646175676961757369612062616c73c5b32e2049c5a172696e6b7475206c61696b6f6d6173206b616e646964617461732c20737572696e6bc4997320646175676961752062616c73c5b32e0a4a65696775207069726d616a616d6520726174652064616c797661766f206e652064617567696175206b616970206475206b616e64696461746169206972206ec497207669656e6173206e656761766f207265696b69616d6f2062616c73c5b320736b6169c48d696175732c2072656e6769616d692070616b6172746f74696e6961692072696e6b696d61692e",
    hex"49c5a172696e6b746173205265737075626c696b6f73205072657a6964656e746173207361766f20706172656967617320707261646564612065697469207279746f6a617573206469656ec4852070617369626169677573205265737075626c696b6f73205072657a6964656e746f206b6164656e63696a61692c20706f20746f206b61692056696c6e69756a652c2064616c797661756a616e7420546175746f7320617473746f76616d7320e28093205365696d6f206e617269616d732c207072697369656b6961205461757461692062c5ab74692069c5a174696b696d6173204c69657475766f73205265737075626c696b6169206972204b6f6e737469747563696a61692c2073c485c5be696e696e6761692065697469207361766f2070617265696761732069722062c5ab74692076697369656d73206c79676961692074656973696e6761732e0a5072697369656b69612069722070657272696e6b746173205265737075626c696b6f73205072657a6964656e7461732e0a5265737075626c696b6f73205072657a6964656e746f20707269657361696b6f7320616b74c48520706173697261c5a16f206a69732070617473206972204b6f6e737469747563696e696f20546569736d6f207069726d696e696e6b61732c206f206a6f206e6573616e7420e28093207669656e61732069c5a1204b6f6e737469747563696e696f20546569736d6f2074656973c4976ac5b32e",
    hex"5265737075626c696b6f73205072657a6964656e746173206e6567616c692062c5ab7469205365696d6f206e617269752c206e6567616c692075c5be696d7469206a6f6b69c5b3206b6974c5b320706172656967c5b3206972206761757469206b69746f6b696f2061746c7967696e696d6f2c2069c5a1736b79727573205265737075626c696b6f73205072657a6964656e747569206e75737461747974c4852061746c7967696e696dc4852069722061746c7967696e696dc4852075c5be206bc5ab727962696ec499207665696b6cc4852e0a41736d756f2c2069c5a172696e6b746173205265737075626c696b6f73205072657a6964656e74752c20747572692073757374616264797469207361766f207665696b6cc48520706f6c6974696ec49773652070617274696a6f736520697220706f6c6974696ec4977365206f7267616e697a6163696a6f736520696b69206e61756a6f73205265737075626c696b6f73205072657a6964656e746f2072696e6b696dc5b3206b616d70616e696a6f732070726164c5be696f732e",
    hex"5265737075626c696b6f73205072657a6964656e7461733a0a312920737072656e64c5be69612070616772696e64696e6975732075c5be7369656e696f20706f6c6974696b6f73206b6c617573696d7573206972206b6172747520737520567972696175737962652076796b646f2075c5be7369656e696f20706f6c6974696bc4853b0a322920706173697261c5a16f204c69657475766f73205265737075626c696b6f73207461727074617574696e6573207375746172746973206972207465696b6961206a6173205365696d7569207261746966696b756f74693b0a332920567972696175737962c49773207465696b696d7520736b69726961206972206174c5a161756b6961204c69657475766f73205265737075626c696b6f73206469706c6f6d6174696e69757320617473746f7675732075c5be7369656e696f2076616c73747962c49773652069722070726965207461727074617574696e69c5b3206f7267616e697a6163696ac5b33b20707269696d612075c5be7369656e696f2076616c7374796269c5b3206469706c6f6d6174696e69c5b320617473746f76c5b320c4af67616c696f6a616d756f73697573206972206174c5a161756b69616d756f73697573207261c5a17475733b207465696b69612061756bc5a1c48d69617573697573206469706c6f6d6174696e6975732072616e677573206972207370656369616c697573207661726475733b0a3429205365696d6f20707269746172696d7520736b69726961204d696e69737472c485205069726d696e696e6bc4852c20706176656461206a616d20737564617279746920567972696175737962c499206972207476697274696e61206a6f7320737564c49774c4af3b0a3529205365696d6f20707269746172696d752061746c656964c5be6961204d696e69737472c485205069726d696e696e6bc4853b0a362920707269696d6120567972696175737962c49773206772c485c5be696e616d757320c4af67616c696f6a696d75732069c5a172696e6b7573206e61756ac485205365696dc48520697220706176656461206a616920656974692070617265696761732c206b6f6c20627573207375646172797461206e61756a6120567972696175737962c4973b0a372920707269696d6120567972696175737962c497732061747369737461747964696e696dc485206972207072697265696b757320706176656461206a616920746f6c6961752065697469207061726569676173206172626120706176656461207669656e616d2069c5a1206d696e69737472c5b32065697469204d696e697374726f205069726d696e696e6b6f2070617265696761732c206b6f6c20627573207375646172797461206e61756a6120567972696175737962c4973b20707269696d61206d696e69737472c5b32061747369737461747964696e696dc4852069722067616c692070617665737469206a69656d7320656974692070617265696761732c206b6f6c20627573207061736b6972746173206e61756a6173206d696e6973747261733b0a38292056797269617573796265692061747369737461747964696e7573206172205679726961757379626569206772c485c5be696e757320c4af67616c696f6a696d75732c206e652076c4976c696175206b61697020706572203135206469656ec5b3207465696b6961205365696d756920737661727374797469204d696e697374726f205069726d696e696e6b6f206b616e6469646174c5ab72c4853b0a3929204d696e697374726f205069726d696e696e6b6f207465696b696d7520736b697269612069722061746c656964c5be6961206d696e6973747275733b0a313029206e757374617479746120747661726b6120736b697269612069722061746c656964c5be696120c4af73746174796dc5b3206e756d6174797475732076616c73747962c4977320706172656967c5ab6e75733b0a313129207465696b6961205365696d75692041756bc5a1c48d69617573696f6a6f20546569736d6f2074656973c4976ac5b3206b616e6469646174c5ab7261732c206f207061736b797275732076697375732041756bc5a1c48d69617573696f6a6f20546569736d6f2074656973c4976a75732c2069c5a1206ac5b3207465696b6961205365696d756920736b697274692041756bc5a1c48d69617573696f6a6f20546569736d6f207069726d696e696e6bc4853b20736b69726961204170656c696163696e696f20746569736d6f2074656973c4976a75732c206f2069c5a1206ac5b320e28093204170656c696163696e696f20746569736d6f207069726d696e696e6bc4852c206a65696775206ac5b3206b616e6469646174c5ab726f6d73207072697461726961205365696d61733b20736b697269612061707967617264c5b3206972206170796c696e6b69c5b320746569736dc5b32074656973c4976a7573206972207069726d696e696e6b75732c206b6569c48d6961206ac5b320646172626f207669657461733b20c4af73746174796d6f206e756d6174797461697320617476656a616973207465696b6961205365696d75692061746c65697374692074656973c4976a75733b205365696d6f20707269746172696d7520736b697269612069722061746c656964c5be6961204c69657475766f73205265737075626c696b6f732067656e6572616c696ec4af2070726f6b75726f72c4853b0a313229207465696b6961205365696d7569207472696ac5b3204b6f6e737469747563696e696f20546569736d6f2074656973c4976ac5b3206b616e6469646174c5ab7261732c206f207061736b79727573207669737573204b6f6e737469747563696e696f20546569736d6f2074656973c4976a75732c2069c5a1206ac5b3207465696b6961205365696d756920736b69727469204b6f6e737469747563696e696f20546569736d6f207069726d696e696e6b6f206b616e6469646174c5ab72c4853b0a313329207465696b6961205365696d75692076616c73747962c49773206b6f6e74726f6c696572696175732c204c69657475766f732062616e6b6f2076616c6479626f73207069726d696e696e6b6f206b616e6469646174c5ab72c4853b2067616c69207465696b7469205365696d75692070617265696bc5a17469206e657061736974696bc4976a696dc485206a6169733b0a313429205365696d6f20707269746172696d7520736b697269612069722061746c656964c5be6961206b617269756f6d656ec4977320766164c4852069722073617567756d6f207461726e79626f73207661646f76c4853b0a3135292073757465696b69612061756bc5a1c48d69617573697573206b6172696e697573206c616970736e6975733b0a3136292067696e6b6c756f746f2075c5be70756f6c696d6f2c206772657369616ec48d696f2076616c73747962c49773207375766572656e756d75692061722074657269746f72696a6f73207669656e746973756d75692c20617476656a7520707269696d6120737072656e64696d75732064c4976c2067796e79626f73206e756f2067696e6b6c756f746f73206167726573696a6f732c206b61726f20706164c4977469657320c4af766564696d6f2c2074616970207061742064c4976c206d6f62696c697a6163696a6f732069722070617465696b696120c5a169756f7320737072656e64696d7573207476697274696e746920617274696d6961757369616d205365696d6f20706f73c49764c5be6975693b0a31372920c4af73746174796d6f206e757374617479746120747661726b6120697220617476656a61697320736b656c626961206e6570617072617374c4856ac48520706164c49774c4af2069722070617465696b696120c5a1c4af20737072656e64696dc485207476697274696e746920617274696d6961757369616d205365696d6f20706f73c49764c5be6975693b0a313829206461726f205365696d65206d6574696e697573207072616e65c5a1696d7573206170696520706164c49774c4af204c69657475766f6a652c204c69657475766f73205265737075626c696b6f73207669646175732069722075c5be7369656e696f20706f6c6974696bc4853b0a313929204b6f6e737469747563696a6f6a65206e756d6174797461697320617476656a61697320c5a161756b6961206e6565696c696ec499205365696d6f20736573696ac4853b0a32302920736b656c6269612065696c696e697573205365696d6f2072696e6b696d75732c206f204b6f6e737469747563696a6f7320353820737472616970736e696f20616e74726f6a6f6a652064616c796a65206e756d6174797461697320617476656a61697320e28093207069726d616c61696b697573205365696d6f2072696e6b696d75733b0a32312920c4af73746174796d6f206e757374617479746120747661726b61207465696b6961204c69657475766f73205265737075626c696b6f732070696c6965747962c4993b0a32322920736b697269612076616c73747962696e697573206170646f76616e6f6a696d75733b0a323329207465696b6961206d616c6f6ec499206e75746569737469657369656d733b0a32342920706173697261c5a16f20697220736b656c626961205365696d6f20707269696d74757320c4af73746174796d75732061726261206772c485c5be696e61206a756f73205365696d7569204b6f6e737469747563696a6f7320373120737472616970736e796a65206e757374617479746120747661726b612e0a537472616970736e696f2070616b656974696d61733a0a4e722e2049582d313337382c20323030332d30332d32302c20c5bd696e2e2c20323030332c204e722e2033322d313331352028323030332d30342d303229",
    hex"5265737075626c696b6f73205072657a6964656e7461732c20c4af677976656e64696e64616d6173206a616d2073757465696b74757320c4af67616c696f6a696d75732c206c656964c5be696120616b7475732d64656b72657475732e204b6164205265737075626c696b6f73205072657a6964656e746f2064656b72657461692c206e75726f64797469204b6f6e737469747563696a6f7320383420737472616970736e696f20332c2031352c2031372069722032312070756e6b74756f736520747572c49774c5b32067616c69c4852c206a69652070726976616c6f2062c5ab746920706173697261c5a1797469204d696e697374726f205069726d696e696e6b6f20617262612061746974696e6b616d6f206d696e697374726f2e20417473616b6f6d7962c4972075c5be20746f6bc4af2064656b726574c4852074656e6b61206ac4af20706173697261c5a169757369616d204d696e697374727569205069726d696e696e6b75692061726261206d696e6973747275692e",
    hex"5265737075626c696b6f73205072657a6964656e746f2061736d756f206e656c6965c48d69616d61733a206b6f6c2065696e61207361766f2070617265696761732c206a6973206e6567616c692062c5ab7469207375696d7461732c207061747261756b7461732062617564c5be69616d6f6a6f6e2061722061646d696e697374726163696ec4976e20617473616b6f6d7962c4976e2e0a5265737075626c696b6f73205072657a6964656e7461732067616c692062c5ab74692070726965c5a1206c61696bc485207061c5a1616c696e7461732069c5a120706172656967c5b32074696b20c5a16975726bc5a1c48d696169207061c5be656964c49973204b6f6e737469747563696ac48520617262612073756c6175c5bec4997320707269657361696bc4852c2074616970207061742070616169c5a16bc4976a75732c206a6f6720706164617279746173206e7573696b616c74696d61732e205265737075626c696b6f73205072657a6964656e746f207061c5a1616c696e696d6f2069c5a120706172656967c5b3206b6c617573696dc48520737072656e64c5be6961205365696d61732061706b616c746f732070726f6365736f20747661726b612e",
    hex"4b6169204b6f6e737469747563696a6f7320353820737472616970736e696f20616e74726f6a6f6a652064616c796a65206e756d6174797461697320617476656a616973205265737075626c696b6f73205072657a6964656e74617320736b656c626961207069726d616c61696b697573205365696d6f2072696e6b696d75732c206e61756a61692069c5a172696e6b746173205365696d617320332f3520766973c5b3205365696d6f206e617269c5b32062616c73c5b32064617567756d6120706572203330206469656ec5b3206e756f207069726d6f73696f7320706f73c49764c5be696f206469656e6f732067616c69207061736b656c627469207069726d616c61696b697573205265737075626c696b6f73205072657a6964656e746f2072696e6b696d75732e0a5265737075626c696b6f73205072657a6964656e7461732c2070616765696461756a616e7469732064616c7976617574692072696e6b696d756f73652c2069c5a1206b6172746f20c4af72656769737472756f6a616d6173206b616e6469646174752e0a546f6b69756f73652072696e6b696d756f73652070616b6172746f74696e61692069c5a172696e6b746173205265737075626c696b6f73205072657a6964656e746173206c61696b6f6d61732069c5a172696e6b747520616e7472616a6169206b6164656e63696a61692c206a6569677520696b692072696e6b696dc5b320707261c4976a6f2064617567696175206b6169702074727973206d65746169206a6f207069726d6f73696f73206b6164656e63696a6f73206c61696b6f2e204a6569677520707261c4976a6f206d61c5be696175206e6567752074727973206d65746169206a6f207069726d6f73696f73206b6164656e63696a6f73206c61696b6f20e28093205265737075626c696b6f73205072657a6964656e7461732072656e6b616d61732074696b206c696b757369616d207069726d6f73696f73206b6164656e63696a6f73206c61696b75692c206b75726973206e656c61696b6f6d617320616e7472c4856a61206b6164656e63696a612e0a4a65696775207069726d616c61696b696169205265737075626c696b6f73205072657a6964656e746f2072696e6b696d616920736b656c6269616d69206a6f20616e74726f73696f73206b6164656e63696a6f73206d6574752c20746169206573616d6173205265737075626c696b6f73205072657a6964656e7461732067616c692062c5ab74692069c5a172696e6b7461732074696b206c696b757369616d20616e74726f73696f73206b6164656e63696a6f73206c61696b75692e",
    hex"5265737075626c696b6f73205072657a6964656e746f20c4af67616c696f6a696d6169206e757472c5ab6b7374612c206b61693a0a31292070617369626169676961206c61696b61732c206b757269616d206a6973206275766f2069c5a172696e6b7461733b0a322920c4af76796b737461207069726d616c61696b696169205265737075626c696b6f73205072657a6964656e746f2072696e6b696d61693b0a33292061747369737461747964696e612069c5a120706172656967c5b33b0a3429205265737075626c696b6f73205072657a6964656e746173206d6972c5a174613b0a3529205365696d6173206ac4af207061c5a1616c696e612069c5a120706172656967c5b32061706b616c746f732070726f6365736f20747661726b613b0a3629205365696d61732c2061747369c5be76656c6764616d617320c4af204b6f6e737469747563696e696f20546569736d6f2069c5a1766164c4852c20332f3520766973c5b3205365696d6f206e617269c5b32062616c73c5b32064617567756d6120707269696d61206e75746172696dc4852c206b757269756f206b6f6e73746174756f6a616d612c206b6164205265737075626c696b6f73205072657a6964656e746f20737665696b61746f732062c5ab6b6cc497206e656c656964c5be6961206a616d2065697469207361766f20706172656967c5b32e",
    hex"5265737075626c696b6f73205072657a6964656e747569206d697275732c2061747369737461747964696e75732c207061c5a1616c696e7573206ac4af2069c5a120706172656967c5b32061706b616c746f732070726f6365736f20747661726b6120617220746164612c206b6169205365696d6173206e7574617269612c206b6164205265737075626c696b6f73205072657a6964656e746f20737665696b61746f732062c5ab6b6cc497206e656c656964c5be6961206a616d206569746920706172656967c5b32c206a6f207061726569676173206c61696b696e61692065696e61205365696d6f205069726d696e696e6b61732e20c5a069756f20617476656a75205365696d6f205069726d696e696e6b6173206e6574656e6b61207361766f20c4af67616c696f6a696dc5b3205365696d652c206b7572206a6f207061726569676173205365696d6f207061766564696d75206c61696b696e61692065696e61206a6f207061766164756f746f6a61732e2049c5a176617264797461697320617476656a616973205365696d6173206e652076c4976c696175206b61697020706572203130206469656ec5b32070726976616c6f207061736b69727469205265737075626c696b6f73205072657a6964656e746f2072696e6b696d75732c206b7572696520747572692062c5ab746920737572656e677469206e652076c4976c696175206b61697020706572206475206dc4976e65736975732e205365696d7569206e6567616c696e74207375736972696e6b7469206972207061736b656c627469205265737075626c696b6f73205072657a6964656e746f2072696e6b696dc5b32c2072696e6b696d757320736b656c62696120567972696175737962c4972e0a5265737075626c696b6f73205072657a6964656e74c4852c206c61696b696e61692069c5a176796b7573c4af20c4af2075c5be7369656ec4af2061726261207375736972677573c4af2069722064c4976c20746f206c61696b696e6169206e6567616c696e74c4af206569746920706172656967c5b32c2074756f206c61696b75207061766164756f6a61205365696d6f205069726d696e696e6b61732e0a4c61696b696e6169207061766164756f64616d6173205265737075626c696b6f73205072657a6964656e74c4852c205365696d6f205069726d696e696e6b6173206e6567616c6920736b656c627469207069726d616c61696b69c5b3205365696d6f2072696e6b696dc5b32c2061746c656973746920617220736b69727469206d696e69737472c5b3206265205365696d6f20737574696b696d6f2e2054756f206c61696b6f746172706975205365696d6173206e6567616c6920737661727374797469206b6c617573696d6f2064c4976c206e657061736974696bc4976a696d6f205365696d6f205069726d696e696e6b752e0a4a6f6b69616973206b697461697320617476656a616973206972206a6f6b69656d73206b697469656d732061736d656e696d7320617220696e737469747563696a6f6d73206e6567616c696d612076796b64797469205265737075626c696b6f73205072657a6964656e746f20c4af67616c696f6a696dc5b32e",
    hex"5265737075626c696b6f73205072657a6964656e74617320747572692072657a6964656e63696ac4852e205265737075626c696b6f73205072657a6964656e746f206972206a6f2072657a6964656e63696a6f732066696e616e736176696dc485206e75737461746f20c4af73746174796d61732e"
    ];

    function get_laws(uint8 _number) public view returns (string memory result) {
        result = laws[_number];
        return result;
    }

}