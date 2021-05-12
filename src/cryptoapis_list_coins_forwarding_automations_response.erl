-module(cryptoapis_list_coins_forwarding_automations_response).

-export([encode/1]).

-export_type([cryptoapis_list_coins_forwarding_automations_response/0]).

-type cryptoapis_list_coins_forwarding_automations_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_list_coins_forwarding_automations_response_data:cryptoapis_list_coins_forwarding_automations_response_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
