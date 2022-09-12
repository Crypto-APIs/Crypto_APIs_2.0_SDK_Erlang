-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribst).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribst/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribst() ::
    #{ 'amount' := binary(),
       'bandwidthUsed' := binary(),
       'contract' := binary(),
       'energyUsed' := binary(),
       'hasInternalTransactions' := boolean(),
       'hasTokenTransfers' := boolean(),
       'input' := binary(),
       'status' := binary()
     }.

encode(#{ 'amount' := Amount,
          'bandwidthUsed' := BandwidthUsed,
          'contract' := Contract,
          'energyUsed' := EnergyUsed,
          'hasInternalTransactions' := HasInternalTransactions,
          'hasTokenTransfers' := HasTokenTransfers,
          'input' := Input,
          'status' := Status
        }) ->
    #{ 'amount' => Amount,
       'bandwidthUsed' => BandwidthUsed,
       'contract' => Contract,
       'energyUsed' => EnergyUsed,
       'hasInternalTransactions' => HasInternalTransactions,
       'hasTokenTransfers' => HasTokenTransfers,
       'input' => Input,
       'status' => Status
     }.
