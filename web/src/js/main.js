var CONTRACT_ADDRESS = '0xCdE20D9D4F0a18234F0c3ab9D22e0cbBC7d23b4a';
var ABI = JSON.parse('[{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"_caller","type":"address"},{"indexed":true,"internalType":"uint8","name":"_law_number","type":"uint8"}],"name":"Caller","type":"event"},{"inputs":[],"name":"kill_sc","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"stateMutability":"nonpayable","type":"constructor"},{"inputs":[],"name":"CONSTITUTION_RELEASE_BY_UNIXTIME","outputs":[{"internalType":"uint32","name":"","type":"uint32"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"get_total_laws_count","outputs":[{"internalType":"uint8","name":"result","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint8","name":"","type":"uint8"}],"name":"laws_per_article","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"LITHUANIA_FLAG","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"LITHUANIAN_ROOTS_INFO","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"LRK_TITLE","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint8","name":"_number","type":"uint8"}],"name":"read_laws_1","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint8","name":"_number","type":"uint8"}],"name":"read_laws_2","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"SC_AUTHORS","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"SMART_CONTRACT_RELEASE_BY_UNIXTIME","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"}]');

// web3 provider with fallback for old version
if (window.ethereum) {
  window.web3 = new Web3(window.ethereum)
  try {
      // ask user for permission
      ethereum.enable()
      // user approved permission
  } catch (error) {
      // user rejected permission
      console.log('user rejected permission')
  }
}
else if (window.web3) {
  window.web3 = new Web3(window.web3.currentProvider || new Web3.providers.HttpProvider('http://localhost:8545'));
  // no need to ask for permission
}
else {
  window.alert('Non-Ethereum browser detected. You should consider trying MetaMask!')
}
console.log (window.web3.currentProvider)

CONTRACT = new web3.eth.Contract(ABI, CONTRACT_ADDRESS);

// User Accounts
var client_account;

web3.eth.getAccounts(function(err, accounts) {
  if (err != null) {
    alert("Error retrieving accounts.");
    return;
  }
  if (accounts.length == 0) {
    alert("No client_account found! Make sure the Ethereum client is configured properly.");
    return;
  }
  client_account = accounts[0];
  document.getElementById('client_Account').innerHTML = client_account;
  web3.eth.defaultAccount = client_account;
});


// LRK Title
(function () {
  CONTRACT.methods.LRK_TITLE().call().then( function( title ) { 
    $("#lrktitle").text(" " + title);
  });
})();

// LT FLAG
(function () {
  CONTRACT.methods.LITHUANIA_FLAG().call().then( function( image ) { 
    $(".ltflag").attr("src",image);
  });
})();

// Authors
(function () {
  CONTRACT.methods.SC_AUTHORS().call().then( function( authors ) { 
    $("#authors").html(authors);
  });
})();

(function () {
  CONTRACT.methods.read_laws_1(1).call().then( function( info ) { 
    document.getElementById('law1_Info').innerHTML = info;
  });    
    CONTRACT.methods.read_laws_1(2).call().then( function( info ) { 
    document.getElementById('law2_Info').innerHTML = info;
  });  
    CONTRACT.methods.read_laws_1(3).call().then( function( info ) { 
    document.getElementById('law3_Info').innerHTML = info;
  });  
    CONTRACT.methods.read_laws_1(4).call().then( function( info ) { 
    document.getElementById('law4_Info').innerHTML = info;
  });  
})();

// SC Publish date
(function () {
  CONTRACT.methods.SMART_CONTRACT_RELEASE_BY_UNIXTIME().call().then( function( sc_release_date ) { 
  let a = new Date(sc_release_date * 1000);
  let months = ['01','02','03','04','05','06','07','08','09','10','11','12'];
  let hours = ['00', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23'];
  let year = a.getFullYear();
  let month = months[a.getMonth()];
  let day = a.getDate();
  let hour = hours[a.getHours()];
  let min = a.getMinutes();
  let sec = a.getSeconds();
  let time = year + '-' + month + '-' + day + ' ' + hour + ':' + min + ':' + sec ;
  $("#screleasedate").html(time);
  });
})();

// Donation
function contribute_to_the_project() {
  info = $("#contribute").val();
  CONTRACT.methods.setInfo(info).send( {from: client_account}).then( function(tx) { 
    console.log("Transaction: ", tx); 
  });
  $("#newInfo").val('');
}