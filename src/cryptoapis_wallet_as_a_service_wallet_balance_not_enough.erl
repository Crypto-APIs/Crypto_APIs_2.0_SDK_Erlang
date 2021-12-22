-module(cryptoapis_wallet_as_a_service_wallet_balance_not_enough).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_wallet_balance_not_enough/0]).

-type cryptoapis_wallet_as_a_service_wallet_balance_not_enough() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
