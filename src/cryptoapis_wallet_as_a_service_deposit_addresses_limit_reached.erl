-module(cryptoapis_wallet_as_a_service_deposit_addresses_limit_reached).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_deposit_addresses_limit_reached/0]).

-type cryptoapis_wallet_as_a_service_deposit_addresses_limit_reached() ::
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
