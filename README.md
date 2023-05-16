rails g resource Agent



rails g resource Apartment image:string price:decimal rate:integer category:string agent:references


rails g resource Room size:decimal price:decimal apartment:references


 rails g serializer director


<!-- ///////////// -->


# Create agents
agents = Agent.create([
  { created_at: Time.now, updated_at: Time.now },
  { created_at: Time.now, updated_at: Time.now }
])

# Create apartments for the first agent
apartments1 = agents[1].apartments.create([
  { 
    image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/a43f94a6-4100-4340-a285-0f3521aa8bbc/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
    price: 10000.0, 
    rate: 4, 
    category: "Luxury"  
  },
  { 
    image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/a43f94a6-4100-4340-a285-0f3521aa8bbc/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
    price: 800.0, 
    rate: 3, 
    category: "Standard"
  },
  { 
    image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/951dd07e-fc05-4967-adbb-839219c98231/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
    price: 30000.0, 
    rate: 3, 
    category: "Luxury"
 },
 { 
    image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/8d49b393-1b24-4b63-b85f-56b4461643f1/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
    price: 30000.0, 
    rate: 3, 
    category: "Standard"
 },
 { 
    image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/8d49b393-1b24-4b63-b85f-56b4461643f1/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
    price: 30000.0, 
    rate: 3, 
    category: "Luxury"
 },
 { 
    image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/2c3285f2-d39a-458f-964f-ec347d3bb83d/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
    price: 30000.0, 
    rate: 3, 
    category: "Luxury"
 },
 { 
    image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/2c3285f2-d39a-458f-964f-ec347d3bb83d/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
    price: 30000.0, 
    rate: 3, 
    category: "Luxury"
 }
])

# Create apartments for the second agent
apartments2 = agents.second.apartments.create([
   { 
      image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/2c3285f2-d39a-458f-964f-ec347d3bb83d/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
      price: 1200.0, 
      rate: 4, 
      category: "Luxury" 
   },
   { 
      image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/6727580d-ff69-4a20-a39c-951b7815c158/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_0.jpg", 
      price: 5500.0, 
      rate: 3, 
      category: "Standard" 
    },
    { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/6727580d-ff69-4a20-a39c-951b7815c158/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_1.jpg", 
        price: 8200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/882f36b3-6e71-423c-be3d-cda0ef847650/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_0.jpg", 
        price: 900.0, 
        rate: 3, 
        category: "Standard" 
      },
      { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/882f36b3-6e71-423c-be3d-cda0ef847650/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/882f36b3-6e71-423c-be3d-cda0ef847650/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_1.jpg", 
        price: 900.0, 
        rate: 3, 
        category: "Standard" 
      },
      { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/04fea88a-6b3d-49d3-a317-887fa8b7ea3d/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/3f4b0d4c-c96d-4d76-8bd4-3886c78137f5/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_0.jpg", 
        price: 900.0, 
        rate: 3, 
        category: "Standard" 
      }
])
# Create apartments for the third agent

apartments3 = agents[3].apartments.create([
    { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/4c5b08b1-9391-4cd4-916c-dc28cb242393/Leonardo_Diffusion_This_photo_captures_a_large_commercial_buil_0.jpg", 
        price: 11200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/b4d4daf6-4f9f-45a8-a43b-4661327e395b/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
        price: 23000.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/b4d4daf6-4f9f-45a8-a43b-4661327e395b/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/4a8b0b49-b8da-4bd4-904e-857a9eecd16d/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
        price: 34200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/4a8b0b49-b8da-4bd4-904e-857a9eecd16d/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/a45a7047-9241-4b42-8655-ed1a134bcac0/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     }
])

# Create apartments for the third agent

apartments4 = agents[4].apartments.create([
    { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/a45a7047-9241-4b42-8655-ed1a134bcac0/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Businness" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/96c0c495-a3ce-4b73-bdd4-92ecb5cd0adb/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Businness" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/96c0c495-a3ce-4b73-bdd4-92ecb5cd0adb/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Businness" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/9388d6f3-7d6d-43be-aab4-35dc43c5d837/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Standard" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/9388d6f3-7d6d-43be-aab4-35dc43c5d837/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Standard" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/9388d6f3-7d6d-43be-aab4-35dc43c5d837/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Standard" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/3332e6de-c5d9-4b5a-81d8-3c8651fcad31/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Standard" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/3332e6de-c5d9-4b5a-81d8-3c8651fcad31/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Standard" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/d7945c06-80ce-4ae7-9d9a-a46ea91638db/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Standard" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/319b4d9a-ff10-4a36-9c69-af730432aeae/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/319b4d9a-ff10-4a36-9c69-af730432aeae/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/a43f94a6-4100-4340-a285-0f3521aa8bbc/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/a43f94a6-4100-4340-a285-0f3521aa8bbc/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/cc91876d-418b-4856-82a3-b277d5cda999/generations/951dd07e-fc05-4967-adbb-839219c98231/Leonardo_Diffusion_Despite_its_age_the_structure_still_stands_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/10deb106-b59d-4347-9811-b47fabbb073b/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     }
])

apartments5 = agents[5].apartments.create([
    { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/10deb106-b59d-4347-9811-b47fabbb073b/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/1f8f550a-a7df-4e5f-ae04-871cfa3ce993/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/1f8f550a-a7df-4e5f-ae04-871cfa3ce993/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/e36dc60d-e9cd-46f7-bf84-6247b37a2142/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/e36dc60d-e9cd-46f7-bf84-6247b37a2142/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/fe82afd0-0a0b-4a16-9593-f0ba29dd8c31/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/fe82afd0-0a0b-4a16-9593-f0ba29dd8c31/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/a624496c-8209-415d-9368-a62ccfe4bd98/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/a624496c-8209-415d-9368-a62ccfe4bd98/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/a624496c-8209-415d-9368-a62ccfe4bd98/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/a624496c-8209-415d-9368-a62ccfe4bd98/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/5538ca1e-451c-4ab6-8fb9-ca18f6066a2e/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/5538ca1e-451c-4ab6-8fb9-ca18f6066a2e/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },{ 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/42d684fb-a771-43ae-bf26-5d0ccb72154f/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },{ 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/42d684fb-a771-43ae-bf26-5d0ccb72154f/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/adb1fd2a-08fc-47aa-a067-655a6758e49d/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },{ 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/adb1fd2a-08fc-47aa-a067-655a6758e49d/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/3998d614-800b-40c5-932a-8a6c35cbb388/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/3998d614-800b-40c5-932a-8a6c35cbb388/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/28b36ec6-9e87-49bf-ac06-8ebd08eb165c/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/28b36ec6-9e87-49bf-ac06-8ebd08eb165c/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/28b36ec6-9e87-49bf-ac06-8ebd08eb165c/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg?w=512", 
        price: 1200.0, 
        rate: 4, 
        category: "Luxury" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/a5f7cb30-9133-4e99-ad1b-3ba9e0804a67/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/a5f7cb30-9133-4e99-ad1b-3ba9e0804a67/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/22ad4f4f-f4b9-4635-a834-e129b95c9e24/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/22ad4f4f-f4b9-4635-a834-e129b95c9e24/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },{ 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/52183904-7d6a-4de3-a735-327b2e883723/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/dc04cfd0-9080-457a-9a41-b8eccbd11294/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/dc04cfd0-9080-457a-9a41-b8eccbd11294/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/dc04cfd0-9080-457a-9a41-b8eccbd11294/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/8a4ba33a-47c1-47c9-8bfe-142b2d116b85/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/8a4ba33a-47c1-47c9-8bfe-142b2d116b85/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/d9e940fb-fb69-4707-830c-ff41936d03c5/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/d9e940fb-fb69-4707-830c-ff41936d03c5/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/32407c1a-3aad-49cc-b46f-e70d310987a5/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/32407c1a-3aad-49cc-b46f-e70d310987a5/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/7c6dc247-581a-491d-b2da-57788bf6ff7b/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/7c6dc247-581a-491d-b2da-57788bf6ff7b/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/94a5bc72-e4bd-4f44-90f3-947a6f48ef62/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/94a5bc72-e4bd-4f44-90f3-947a6f48ef62/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/aedc21b5-366b-4db4-a479-7009ba91059b/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/aedc21b5-366b-4db4-a479-7009ba91059b/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/b3899361-ab34-4ce5-82a8-e769cfedfdc3/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/0e36a2c7-4f7b-43d6-866d-0fdef7f5f307/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/0e36a2c7-4f7b-43d6-866d-0fdef7f5f307/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/0e36a2c7-4f7b-43d6-866d-0fdef7f5f307/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/b440489a-d912-4ecd-b757-e93808e74d76/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_0.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     },
     { 
        image: "https://cdn.leonardo.ai/users/ca9e5ae6-c2a1-45db-80c6-2bc46654f209/generations/b440489a-d912-4ecd-b757-e93808e74d76/Leonardo_Diffusion_This_remarkable_building_is_a_testament_to_1.jpg", 
        price: 1200.0, 
        rate: 4, 
        category: "Home" 
     }
])

# Create rooms for the first apartment
rooms1 = apartments1.first.rooms.create([
  { size: 20.0, price: 200.0 },
  { size: 25.0, price: 250.0 }
])

# Create rooms for the second apartment
rooms2 = apartments2.first.rooms.create([
  { size: 30.0, price: 300.0 },
  { size: 35.0, price: 350.0 }
])

rooms3 = apartments3.first.rooms.create([
  { size: 20.0, price: 200.0 },
  { size: 25.0, price: 250.0 }
])

# Create rooms for the second apartment
rooms4 = apartments4.first.rooms.create([
  { size: 30.0, price: 300.0 },
  { size: 35.0, price: 350.0 }
])


rails g controller Sessions --no-test-framework
rails g controller Users --no-test-framework



post "/login", to: "sessions#create"


class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end
end


Staying Logged In
get "/me", to: "users#show"

class UsersController < ApplicationController
  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end
end



Logging Out
delete "/logout", to: "sessions#destroy"
def destroy
  session.delete :user_id
  head :no_content
end