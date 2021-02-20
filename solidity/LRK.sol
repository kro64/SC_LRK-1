pragma solidity >=0.7.0 <0.8.6;

contract LRK_LAWS {
    function get_laws(uint8 number) public view returns(string memory) {}
}


contract LRK {
    address private OWNER;
    uint public SMART_CONTRACT_RELEASE_BY_UNIXTIME;
    uint32 public constant CONSTITUTION_RELEASE_BY_UNIXTIME = 720716400;
    uint8[16] private LAWS_COUNT_PER_ARTICLE = [0, 17, 20, 8, 9, 22, 14, 11, 7, 10, 6, 8, 2, 12, 3, 5];
    string public constant LITHUANIAN_ROOTS_INFO = hex"4c494554555649c5b22054415554410a0ae280932070726965c5a12064617567656cc4af20616dc5be69c5b32073756bc5ab72757369204c69657475766f732076616c73747962c4992c0ae28093206a6f732074656973696e6975732070616d61747573206772696e64757369204c69657475766f7320537461747574616973206972204c69657475766f73205265737075626c696b6f73204b6f6e737469747563696a6f6d69732c0ae2809320c5a1696d746d65c48d696169732061746b616b6c6961692067796e757369207361766f206c61697376c499206972206e657072696b6c6175736f6d7962c4992c0ae280932069c5a1736175676f6a757369207361766f206476617369c4852c2067696d74c4856ac485206b616c62c4852c207261c5a174c48520697220706170726fc48d6975732c0ae2809320c4af6bc5ab6e7964616d612070726967696d74696ec49920c5be6d6f6761757320697220546175746f732074656973c499206c61697376616920677976656e7469206972206b75727469207361766f2074c49776c5b32069722070726f74c4977669c5b320c5be656dc4976a6520e28093206e657072696b6c6175736f6d6f6a65204c69657475766f732076616c73747962c4976a652c0ae280932070756f73656cc49764616d61204c69657475766f7320c5be656dc4976a652074617574696ec4992073616e74617276c4992c0ae28093207369656b64616d612061747669726f732c2074656973696e676f732c206461726e696f732070696c696574696ec4977320766973756f6d656ec497732069722074656973696ec497732076616c73747962c497732c0a617467696d7573696f73204c69657475766f732076616c73747962c497732070696c6965c48d69c5b32076616c696120707269696d6120697220736b656c62696120c5a169c485204b4f4e535449545543494ac4842e";
    string public constant LITHUANIA_FLAG = hex"646174613a696d6167652f706e673b6261736536342c6956424f5277304b47676f414141414e535568455567414141494141414143414341594141414444506d484c41414141426d4a4c5230514141414141414144355137742f414141414358424957584d41414133584141414e317746434b4a74344141414143585a7751576341414143414141414167414177345447614141414253556c45515652343275336473556b46515268473064336e4a494b5957494778594751726c6d4550566955595749476443412b4d316166575950516a3935774b50706962444f777932775941414141414141414141414141414d432f744a2b657278366d527a426e507a316666552b50594d3761746d326648734763772f51415a676b6754674278416f6754514a7741346751514a3441344163514a4945344163514b4945304363414f4945454365414f4148454353424f4148454369424e4133504a4a634e74362f7a79623373436764663936506232425165766c37584a36413450577476394d6232435157304363414f4945454365414f4148454353424f4148454369424e416e4144694242416e6744674278416b6754674278416f6754514a7741346751514a34413441635174727757307262766a782f5147427531504e37642b4441686246312f4f763277352f6a61336744674278416b6754674278416f6754514a7741346751514a3441344163514a4945344163514b4945304363414f4945454365414f4148454353424f414845436946736e43615374342f6e6863586f45414141414141414141414141414141413845652f3242385650426755547059414141416c6445565964474e795a5746305a53316b5958526c414449774d446b744d5449744d4468554d5449364d446b364d5467744d4463364d4444374636524d414141414a5852465748526b5958526c4f6d4e795a5746305a5141794d4445774c5441784c544578564441354f6a51334f6a457a4c5441334f6a417735776b6d3851414141435630525668305a4746305a547074623252705a6e6b414d6a41784d4330774d5330784d5651774f546f304e7a6f784d7930774e7a6f774d4a5a556e6b304141414179644556596445787059325675633255416148523063446f764c3256754c6e647061326c775a57527059533576636d637664326c726153395164574a7361574e665a47397459576c75502f33717a77414141435630525668306257396b61575a354c575268644755414d6a41774f5330784d6930774f4651784d6a6f774f546f784f4330774e7a6f774d4b536d306e67414141415a6445565964464e765a6e523359584a6c4148643364793570626d747a593246775a533576636d6562376a7761414141414748524657485254623356795932554156326c726157316c5a476c6849454e7662573176626e5053776c4f61414141414e6e524657485254623356795932566656564a4d41476830644841364c79396a623231746232357a4c6e647061326c745a57527059533576636d637664326c726153394e59576c75583142685a3255532f4263744141414141456c46546b5375516d4343";
    string public constant LRK_TITLE = hex"4c69657475766f732052657370756c62696b6f73204b6f6e737469747563696a61";
    address private constant LRK_LAWS_1_ADDRESS = 0x19141E111873752a958020680B53fa6FbBcd6E93;
    address private constant LRK_LAWS_2_ADDRESS = 0xe1478926b510764006E85B63fEd303a8BB6Be1C0;
    mapping(uint8 => uint8) public laws_per_article;

    constructor() {
        OWNER = msg.sender;
        SMART_CONTRACT_RELEASE_BY_UNIXTIME = block.timestamp;
        
        for (uint8 i = 0; i < LAWS_COUNT_PER_ARTICLE.length; i++){
            laws_per_article[i] = LAWS_COUNT_PER_ARTICLE[i];
        }
    }
    
    event Caller(
        address indexed _caller,
        uint8 indexed _law_number
    );

    function get_total_laws_count() public view returns(uint8 result) {
        for (uint8 i = 0; i < LAWS_COUNT_PER_ARTICLE.length; i++) {
            result = result + LAWS_COUNT_PER_ARTICLE[i];
        }
    }

    function read_laws_1(uint8 _number) public view laws_1_requirements(_number) returns (string memory) {
        return LRK_LAWS(LRK_LAWS_1_ADDRESS).get_laws(_number);
        
    }

    function read_laws_2(uint8 _number) public view laws_2_requirements(_number) returns (string memory)  {
        return LRK_LAWS(LRK_LAWS_2_ADDRESS).get_laws(_number);
    }

    modifier laws_1_requirements(uint8 number) {
        require(number >= 1 && number <= 17, "There is no law with this number");
        _;
    }
    
    modifier laws_2_requirements(uint8 number) {
        require(number >= 1 && number <= 20, "There is no law with this number");
        _;
    }

    modifier is_owner() {
        require(msg.sender == OWNER, "Caller is not smart contract owner");
        _;
    }

    function kill_sc() public is_owner {
       selfdestruct(msg.sender);
   }
}
