-module(cryptoapis_wallet_as_a_service_wallet_balance_not_enough_error).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_wallet_balance_not_enough_error/0]).

-type cryptoapis_wallet_as_a_service_wallet_balance_not_enough_error() ::
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
