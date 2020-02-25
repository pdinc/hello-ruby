# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – the first 
# transaction is the "ICO" (Initial Coin Offering)
blockchain = [
  { from_user: nil, to_user: "brian", amount: 21000 },
  { from_user: "brian", to_user: "ben", amount: 9000 },
  { from_user: "brian", to_user: "jeff", amount: 7000 },
  { from_user: "ben", to_user: "jeff", amount: 400 },
  { from_user: "brian", to_user: "jeff", amount: 1500 },
  { from_user: "jeff", to_user: "brian", amount: 4500 },
  { from_user: "jeff", to_user: "ben", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Brian's KelloggCoin balance is 8000
# Ben's KelloggCoin balance is 10350
# Jeff's KelloggCoin balance is 2650

users = Array.new

for i in 0..(blockchain.length - 1)
    users[i] =  blockchain[i][:to_user]
end
users = users.uniq
wallet = Hash.new(0)

for transaction in blockchain
            wallet[transaction[:from_user]] = wallet[transaction[:from_user]] - transaction[:amount]
            wallet[transaction[:to_user]] = wallet[transaction[:to_user]] + transaction[:amount]
end

for wallet_user in wallet
    if wallet_user[0] != nil
        puts "#{wallet_user[0]}'s KelloggCoin balance is #{wallet_user[1]}"
    end
end