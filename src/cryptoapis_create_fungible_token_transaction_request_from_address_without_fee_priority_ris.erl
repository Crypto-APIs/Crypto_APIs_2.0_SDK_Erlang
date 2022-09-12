-module(cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ris).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ris/0]).

-type cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ris() ::
    #{ 'contractAddress' := binary(),
       'feeLimit' := binary(),
       'symbol' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress,
          'feeLimit' := FeeLimit,
          'symbol' := Symbol
        }) ->
    #{ 'contractAddress' => ContractAddress,
       'feeLimit' => FeeLimit,
       'symbol' => Symbol
     }.
