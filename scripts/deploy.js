const { ethers } = require("hardhat");
const { run } = require("hardhat");
async function verify(address, constructorArguments) {
    console.log(`verify  ${address} with arguments ${constructorArguments.join(',')}`)
    await run("verify:verify", {
        address,
        constructorArguments
    })
}
async function main() {
//   let owner =  '0x12eF0F1C99D8FD50fFd37cCd12B09Ef7f1213269';
   
//   const BasicERC1155 = await ethers.deployContract( 'BasicERC1155' , []);

//     console.log("Deploying BasicERC1155...");
//     await BasicERC1155.waitForDeployment()

//     console.log("BasicERC1155 deployed to:", BasicERC1155.target);

//     await new Promise(resolve => setTimeout(resolve, 10000));
    verify('0x3C4e192A32d11fb940C34273372492258F57DBb7', [])
}
main()