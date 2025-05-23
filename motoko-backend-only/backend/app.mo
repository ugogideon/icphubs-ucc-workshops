import Float "mo:base/Float";
persistent actor Project{
  //Decentralised Banking System
  // CheckBalance, TopUp, Withdraw
  //CheckBalance
  stable var balance : Float = 100;
  public func checkBalance(): async Text{
return "Your Balance is:" # Float.toText(balance)
  };

// topUP Function
public func topUp(amount: Float): async Text{
  balance := balance + amount;
  return "An amount:" # Float.toText(amount) # "added"
};

//Withdraw
public func withDraw(amount : Float): async Text{
  balance := balance - amount;
  return "An amount :" # Float.toText(amount) #"withdraw";
};
};
