# Singh-Rentals-Rental-Agreement-and-Leasing-Process-with-Blockchain
A Rental Agreement and Leasing Management System that totally works on Blockchain. Stores every transaction on Blockchain with validated block numbers and is very easily accessible from your Meta-Mask Wallet.

If you are planning to learn solidity for basic smart contrats and are amazed by your own code working properly. You should definatly try this.
This was my Final year project and I Pposted it too late because i was not that confident about the same. 
But then I realized its nothing to worry if it is not yet Completed , its nothing to worry if the front and backend dont work together.
Atleast I can Show the world about my final year project.

So Lets start with it !..

Firstly I started reading a lot of research papers and evrything about blockhain and ethereum smart contracts.
So i started earning solidity from Udemy and other Online platforms its not that difficult but bit tricky to understand it properly.

The Best IDE for to run solidity code is the Remix IDE. Provided byt the ethereum Platform Itself.
Slowly I was able to create tiny contracts and was able to initiate the payments in it.

I have used the Rinkbey test ethereum network for the sake of real transactions and catching the records for the same.
Also the main reason to use Rinkbey Test Network was the test ethers were eaisly accessible.


Step 1 ------> First of all you need to set up an MetaMask Wallet and activate your TestCoin Network if you want to test this Code.
You can receive the Test Ethers from the testcoin providers. For Eg: I used https://faucets.chain.link/  to receive testcoins for Rinkbey Test Network.
i) --> Connect it with your wallet address.
ii) --> Request for test coins and wait. It will be credited to the wallet within 60 to 90 seconds.
iii) --> If you want to can track the order by the link provided for the EtherScan/RinkBey you can visit https://rinkeby.etherscan.io/ and search by your transaction hash key.


Step 2 -----> Then we need to deploy our contract on the REMIX-IDE a solidity based platform provided by Ethereum Network Itself. And the most amazing ting about using this IDE is that you don't need to download any kind of setup file or software for this this platrform is comnpletely free and secure to use in online mode.
i) --> Visit https://remix.ethereum.org/ this link to start with your solidity code.
ii) --> Create a New contract in the folder contracts you find in the left sided dropdown menu name it according to your convenience and give it an extension as .sol.
iii) --> Copy the provided code in RentalLeaseAgreement.sol file or directly copy the whole file and past it in the file you have created in the contracts folder.
iv) --> Go to The Solidity Compiler window and select the pragma solidity version as mentioned in the code and Compile your code to check if there is any kind of problem running through your code.
v) --> Then jump to the Deploy and Run transaction Window below the Compile window and paste your wallet addres in the Add Address box and deploy your project.
vi) --> Now you can check in your MetaMask Wallet that the project is been deployed.
vii) --> You can save all the transaction scenarios in .json format from the Transactions Recorded window.
viii) --> Down in the Deployed contracts window you can see your contract functions.


Step 3 -----> Have a look on my RentalLeaseAgreement.sol file where I have created the code for smart-contract that has the functions for:-
i) Confirming the Agreement from the Tennant Side.
ii) Triggering the payments.
iii) Terminating the agreement.

Step 4 -----> Triggering tghese functions from your Remix IDE will throw you an notification in your MetaMask wallet to confirm the payment request. As soon as you confirm the payment the amount is deducted from your wallet and is been credited to beneficiary's wallet.

I have also mentioned the index.html file and Rentals Website Development file where you will find the whole website to use this project from front-end.
Unfortunately I was not able to connect my Front-end with my Back-end.
