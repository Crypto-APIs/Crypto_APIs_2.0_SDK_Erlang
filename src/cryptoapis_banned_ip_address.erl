-module(cryptoapis_banned_ip_address).

-export([encode/1]).

-export_type([cryptoapis_banned_ip_address/0]).

-type cryptoapis_banned_ip_address() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_banned_ip_address_error:cryptoapis_banned_ip_address_error()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
