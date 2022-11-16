from transformers import (

    AutoTokenizer,

    LEDConfig,

    LEDForConditionalGeneration,

)

tokenizer = AutoTokenizer.from_pretrained('allenai/PRIMERA')

config=LEDConfig.from_pretrained('allenai/PRIMERA')

model = LEDForConditionalGeneration.from_pretrained('allenai/PRIMERA')