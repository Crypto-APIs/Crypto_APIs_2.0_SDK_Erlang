-module(cryptoapis_get_transaction_request_details_ri_recipients).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_request_details_ri_recipients/0]).

-type cryptoapis_get_transaction_request_details_ri_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'address' => Address,
       'amount' => Amount,
       'unit' => Unit
     }.
