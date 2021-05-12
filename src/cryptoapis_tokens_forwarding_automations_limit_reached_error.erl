-module(cryptoapis_tokens_forwarding_automations_limit_reached_error).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_automations_limit_reached_error/0]).

-type cryptoapis_tokens_forwarding_automations_limit_reached_error() ::
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
