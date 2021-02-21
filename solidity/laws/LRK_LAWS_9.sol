pragma solidity >=0.7.0 <0.8.6;

contract LRK_LAWS_9 {
    
    mapping(uint8 => string) private LAW_VALUE;

    constructor(){
        LAW_VALUE[109] = hex"54656973696e67756dc485204c69657475766f73205265737075626c696b6f6a652076796b646f2074696b20746569736d61692e0a54656973c4976a617320697220746569736d61692c2076796b647964616d692074656973696e67756dc4852c20797261206e657072696b6c6175736f6d692e0a54656973c4976a61692c206e616772696ec49764616d692062796c61732c206b6c6175736f2074696b20c4af73746174796d6f2e0a546569736d617320707269696d6120737072656e64696d7573204c69657475766f73205265737075626c696b6f732076617264752e";
        LAW_VALUE[110] = hex"54656973c4976a6173206e6567616c69207461696b79746920c4af73746174796d6f2c206b757269732070726965c5a174617261756a61204b6f6e737469747563696a61692e0a5461697320617476656a6169732c206b6169207972612070616772696e646f206d616e7974692c206b616420c4af73746174796d6173206172206b697461732074656973696e697320616b7461732c206b7572697320747572c49774c5b32062c5ab7469207461696b6f6d6173206b6f6e6b7265c48d696f6a652062796c6f6a652c2070726965c5a174617261756a61204b6f6e737469747563696a61692c2074656973c4976a617320737573746162646f20c5a1696f732062796c6f73206e616772696ec4976a696dc485206972206b726569706961736920c4af204b6f6e737469747563696ec4af20546569736dc48520707261c5a17964616d617320737072c4997374692c20617220c5a1697320c4af73746174796d6173206172206b697461732074656973696e697320616b7461732061746974696e6b61204b6f6e737469747563696ac4852e";
        LAW_VALUE[111] = hex"4c69657475766f73205265737075626c696b6f7320746569736d616920797261204c69657475766f732041756bc5a1c48d69617573696173697320546569736d61732c204c69657475766f73206170656c696163696e697320746569736d61732c2061707967617264c5b3206972206170796c696e6b69c5b320746569736d61692e0a41646d696e697374726163696e69c5b32c20646172626f2c20c5a165696d6f73206972206b6974c5b3206b617465676f72696ac5b32062796c6f6d73206e616772696ec497746920706167616c20c4af73746174796dc4852067616c692062c5ab746920c4af73746569677469207370656369616c697a756f746920746569736d61692e0a546569736d61692073752079706174696e6761697320c4af67616c696f6a696d616973207461696b6f73206d657475204c69657475766f73205265737075626c696b6f6a65206e6567616c692062c5ab746920737465696769616d692e0a546569736dc5b3207375646172796dc485206972206b6f6d706574656e63696ac485206e75737461746f204c69657475766f73205265737075626c696b6f7320746569736dc5b320c4af73746174796d61732e";
        LAW_VALUE[112] = hex"54656973c4976a616973204c69657475766f6a652067616c692062c5ab74692074696b204c69657475766f73205265737075626c696b6f732070696c6965c48d6961692e0a41756bc5a1c48d69617573696f6a6f20546569736d6f2074656973c4976a75732c206f2069c5a1206ac5b320e28093207069726d696e696e6bc4852c20736b697269612069722061746c656964c5be6961205365696d6173205265737075626c696b6f73205072657a6964656e746f207465696b696d752e0a4170656c696163696e696f20746569736d6f2074656973c4976a75732c206f2069c5a1206ac5b320e28093207069726d696e696e6bc4852c20736b69726961205265737075626c696b6f73205072657a6964656e746173205365696d6f20707269746172696d752e0a4170796c696e6b69c5b32c2061707967617264c5b3206972207370656369616c697a756f74c5b320746569736dc5b32074656973c4976a7573206972207069726d696e696e6b757320736b697269612c206ac5b320646172626f20766965746173206b6569c48d6961205265737075626c696b6f73205072657a6964656e7461732e0a44c4976c2074656973c4976ac5b3207061736b7972696d6f2c20706161756bc5a174696e696d6f2c207065726bc4976c696d6f2061722061746c656964696d6f2069c5a120706172656967c5b3205265737075626c696b6f73205072657a6964656e7475692070617461726961207370656369616c6920c4af73746174796d6f206e756d61747974612074656973c4976ac5b320696e737469747563696a612e0a41736d756f2c207061736b69727461732074656973c4976a752c20c4af73746174796d6f206e757374617479746120747661726b61207072697369656b69612062c5ab74692069c5a174696b696d6173204c69657475766f73205265737075626c696b61692c2076796b647974692074656973696e67756dc4852074696b20706167616c20c4af73746174796dc4852e";
        LAW_VALUE[113] = hex"54656973c4976a6173206e6567616c692075c5be696d7469206a6f6b69c5b3206b6974c5b32072656e6b616dc5b320617220736b697269616dc5b320706172656967c5b32c2064697262746920766572736c6f2c206b6f6d657263696a6f73206172206b69746f6b696f7365207072697661c48d696f736520c4af73746169676f736520617220c4af6d6f6ec49773652e204a6973207461697020706174206e6567616c69206761757469206a6f6b696f206b69746f2061746c7967696e696d6f2c2069c5a1736b797275732074656973c4976a6f2061746c7967696e696dc485206265692075c5be6d6f6b657374c4af2075c5be2070656461676f67696ec499206172206bc5ab727962696ec499207665696b6cc4852e0a54656973c4976a6173206e6567616c692064616c79766175746920706f6c6974696e69c5b32070617274696ac5b3206972206b6974c5b320706f6c6974696e69c5b3206f7267616e697a6163696ac5b3207665696b6c6f6a652e";
        LAW_VALUE[114] = hex"56616c73747962696ec497732076616c64c5be696f732069722076616c64796d6f20696e737469747563696ac5b32c205365696d6f206e617269c5b3206972206b6974c5b320706172656967c5ab6ec5b32c20706f6c6974696e69c5b32070617274696ac5b32c20706f6c6974696e69c5b320697220766973756f6d656e696e69c5b3206f7267616e697a6163696ac5b32061722070696c6965c48d69c5b3206b69c5a1696d6173697320c4af2074656973c4976a6f20617220746569736d6f207665696b6cc485206472617564c5be69616d61732069722075c5be747261756b696120c4af73746174796d6f206e756d61747974c48520617473616b6f6d7962c4992e0a54656973c4976a6173206e6567616c692062c5ab7469207061747261756b7461732062617564c5be69616d6f6a6f6e20617473616b6f6d7962c4976e2c207375696d7461732c206e6567616c692062c5ab7469206b6974616970207375766172c5be797461206a6f206c61697376c497206265205365696d6f2c206f2074617270205365696d6f20736573696ac5b320e28093206265205265737075626c696b6f73205072657a6964656e746f20737574696b696d6f2e";
        LAW_VALUE[115] = hex"4c69657475766f73205265737075626c696b6f7320746569736dc5b32074656973c4976a61692061746c656964c5be69616d692069c5a120706172656967c5b320c4af73746174796d6f206e757374617479746120747661726b6120c5a16961697320617476656a6169733a0a3129207361766f206e6f72753b0a3229207061736962616967757320c4af67616c696f6a696dc5b3206c61696b756920617262612073756c61756bc49920c4af73746174796d65206e757374617479746f2070656e73696e696f20616dc5be696175733b0a33292064c4976c20737665696b61746f732062c5ab6b6cc497733b0a34292069c5a172696e6b757320c4af206b697461732070617265696761732061726261206ac5b320737574696b696d75207065726bc4976c757320c4af206b6974c4852064617262c4853b0a3529206b6169207361766f20706f656c676975207061c5be656d696e6f2074656973c4976a6f2076617264c4853b0a3629206b616920c4af736974656973c4976a61206a756f732061706b616c74696ec49920746569736dc5b3206e756f737072656e64c5be6961692e";
        LAW_VALUE[116] = hex"41756bc5a1c48d69617573696f6a6f20546569736d6f207069726d696e696e6bc4852069722074656973c4976a75732c207461697020706174204170656c696163696e696f20746569736d6f207069726d696e696e6bc4852069722074656973c4976a75732075c5be20c5a16975726bc5a174c5b3204b6f6e737469747563696a6f73207061c5be656964696dc485206172626120707269657361696b6f732073756c6175c5be796dc4852c2074616970207061742070616169c5a16bc4976a75732c206a6f6720706164617279746173206e7573696b616c74696d61732c205365696d61732067616c69207061c5a1616c696e74692069c5a120706172656967c5b32061706b616c746f732070726f6365736f20747661726b612e";
        LAW_VALUE[117] = hex"566973756f736520746569736d756f73652062796c6f73206e616772696ec4976a616d6f7320766965c5a161692e20546569736d6f20706f73c4976469732067616c692062c5ab74692075c5be646172617320e2809320c5be6d6f676175732061736d656e696e696f20617220c5a165696d796e696e696f20677976656e696d6f20736c617074756d7569206170736175676f74692c207461697020706174206a6569677520766965c5a16169206e616772696ec4976a616d612062796c612067616c69206174736b6c65697374692076616c73747962696ec4992c2070726f666573696ec499206172206b6f6d657263696ec499207061736c617074c4af2e0a546569736d6f2070726f6365736173204c69657475766f73205265737075626c696b6f6a652076796b7374612076616c73747962696e65206b616c62612e0a41736d656e696d732c206e656d6f6b616e7469656d73206c696574757669c5b3206b616c626f732c20676172616e74756f6a616d612074656973c4972064616c7976617574692074617264796d6f20697220746569736d696e69756f7365207665696b736d756f7365207065722076657274c4976ac4852e";
        LAW_VALUE[118] = hex"496b69746569736d696ec4af20747972696dc485206f7267616e697a756f6a61206972206a616d207661646f7661756a612c2076616c73747962696ec4af206b616c74696e696dc4852062617564c5be69616d6f73696f73652062796c6f73652070616c61696b6f2070726f6b75726f7261732e0a50726f6b75726f72617320c4af73746174796d6f206e7573746174797461697320617476656a6169732067696e612061736d656e732c20766973756f6d656ec497732069722076616c73747962c4977320746569736573206265692074656973c49774757320696e746572657375732e0a50726f6b75726f7261732c2076796b647964616d6173207361766f2066756e6b63696a61732c20797261206e657072696b6c6175736f6d6173206972206b6c6175736f2074696b20c4af73746174796d6f2e0a4c69657475766f73205265737075626c696b6f732070726f6b75726174c5ab7261207972612047656e6572616c696ec4972070726f6b75726174c5ab72612069722074657269746f72696ec497732070726f6b75726174c5ab726f732e0a47656e6572616c696ec4af2070726f6b75726f72c48520736b697269612069722061746c656964c5be6961205265737075626c696b6f73205072657a6964656e746173205365696d6f20707269746172696d752e0a50726f6b75726f72c5b320736b7972696d6f2069722061746c656964696d6f20747661726bc4852c206ac5b320737461747573c485206e75737461746f20c4af73746174796d61732e0a537472616970736e696f2070616b656974696d61733a0a4e722e2049582d313337392c20323030332d30332d32302c20c5bd696e2e2c20323030332c204e722e2033322d313331362028323030332d30342d303229";
    }

    function get_laws(uint8 _number) public view returns (string memory result) {
        result = LAW_VALUE[_number];
        return result;
    }
}