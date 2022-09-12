-module(cryptoapis_wallet_as_a_service_provided_network_is_not_suitable_for_this_wallet_type).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_provided_network_is_not_suitable_for_this_wallet_type/0]).

-type cryptoapis_wallet_as_a_service_provided_network_is_not_suitable_for_this_wallet_type() ::
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
