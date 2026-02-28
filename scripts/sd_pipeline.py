from diffusers import StableDiffusionPipeline
import torch

pipe = StableDiffusionPipeline.from_pretrained("runwayml/stable-diffusion-v1-5", torch_dtype=torch.float16)
pipe = pipe.to("cuda")

prompt = "Yarko with lantern facing Tremtyk in enchanted forest, watercolor style"
image = pipe(prompt).images[0]
image.save("output.png")
