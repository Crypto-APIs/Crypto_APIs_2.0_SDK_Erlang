-module(cryptoapis_banned_ip_address_details_inner).

-export([encode/1]).

-export_type([cryptoapis_banned_ip_address_details_inner/0]).

-type cryptoapis_banned_ip_address_details_inner() ::
    #{ 'attribute' := binary(),
       'message' := binary()
     }.

encode(#{ 'attribute' := Attribute,
          'message' := Message
        }) ->
    #{ 'attribute' => Attribute,
       'message' => Message
     }.
