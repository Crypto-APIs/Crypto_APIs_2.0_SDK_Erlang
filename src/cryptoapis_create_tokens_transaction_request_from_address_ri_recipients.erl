-module(cryptoapis_create_tokens_transaction_request_from_address_ri_recipients).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_ri_recipients/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_ri_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
