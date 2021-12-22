-module(cryptoapis_list_latest_mined_blocks_ribsbsc).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsbsc/0]).

-type cryptoapis_list_latest_mined_blocks_ribsbsc() ::
    #{ 'difficulty' := binary(),
       'extraData' := binary(),
       'gasLimit' := binary(),
       'gasUsed' := binary(),
       'minedInSeconds' := integer(),
       'nonce' := binary(),
       'sha3Uncles' := binary(),
       'size' := integer(),
       'totalDifficulty' := binary(),
       'uncles' := list()
     }.

encode(#{ 'difficulty' := Difficulty,
          'extraData' := ExtraData,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'minedInSeconds' := MinedInSeconds,
          'nonce' := Nonce,
          'sha3Uncles' := Sha3Uncles,
          'size' := Size,
          'totalDifficulty' := TotalDifficulty,
          'uncles' := Uncles
        }) ->
    #{ 'difficulty' => Difficulty,
       'extraData' => ExtraData,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'minedInSeconds' => MinedInSeconds,
       'nonce' => Nonce,
       'sha3Uncles' => Sha3Uncles,
       'size' => Size,
       'totalDifficulty' => TotalDifficulty,
       'uncles' => Uncles
     }.
