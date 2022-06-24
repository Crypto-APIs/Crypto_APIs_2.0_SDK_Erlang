-module(cryptoapis_create_fungible_tokens_transaction_request_from_address_ri_recipients_inner).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_tokens_transaction_request_from_address_ri_recipients_inner/0]).

-type cryptoapis_create_fungible_tokens_transaction_request_from_address_ri_recipients_inner() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
