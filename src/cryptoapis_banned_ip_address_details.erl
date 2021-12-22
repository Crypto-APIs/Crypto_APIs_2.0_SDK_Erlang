-module(cryptoapis_banned_ip_address_details).

-export([encode/1]).

-export_type([cryptoapis_banned_ip_address_details/0]).

-type cryptoapis_banned_ip_address_details() ::
    #{ 'attribute' := binary(),
       'message' := binary()
     }.

encode(#{ 'attribute' := Attribute,
          'message' := Message
        }) ->
    #{ 'attribute' => Attribute,
       'message' => Message
     }.
