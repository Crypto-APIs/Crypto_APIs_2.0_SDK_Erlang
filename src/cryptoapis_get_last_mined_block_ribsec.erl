-module(cryptoapis_get_last_mined_block_ribsec).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_ribsec/0]).

-type cryptoapis_get_last_mined_block_ribsec() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'extraData' := binary(),
       'gasLimit' := binary(),
       'gasUsed' := binary(),
       'minedInSeconds' := integer(),
       'sha3Uncles' := binary(),
       'totalDifficulty' := binary(),
       'uncles' := list()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'extraData' := ExtraData,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'minedInSeconds' := MinedInSeconds,
          'sha3Uncles' := Sha3Uncles,
          'totalDifficulty' := TotalDifficulty,
          'uncles' := Uncles
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'extraData' => ExtraData,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'minedInSeconds' => MinedInSeconds,
       'sha3Uncles' => Sha3Uncles,
       'totalDifficulty' => TotalDifficulty,
       'uncles' => Uncles
     }.
