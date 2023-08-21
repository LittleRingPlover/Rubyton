# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
    email: 'admin@admin.com',
    password: '123456',
    encrypted_password: '123456',
    reset_password_token: '123456',
    reset_password_sent_at: Time.current - 1.day,
    remember_created_at: Time.current - 1.month
  )

Hackathon.create(title: "Fitness and wellness", start_date: DateTime.new(2023, 7, 9, 19, 00), end_date: DateTime.new(2023, 7, 9, 19, 00) + 7.days)
Hackathon.create(title: "AI for Social Good", start_date: DateTime.new(2023, 7, 16, 19, 00), end_date: DateTime.new(2023, 7, 16, 19, 00) + 7.days)
Hackathon.create(title: "Gaming for Education", start_date: DateTime.new(2023, 7, 23, 19, 00), end_date: DateTime.new(2023, 7, 23, 19, 00) + 7.days)
Hackathon.create(title: "Saving the world!", start_date: DateTime.new(2023, 7, 30, 19, 00), end_date: DateTime.new(2023, 7, 30, 19, 00) + 7.days)

Entry.create(title: "Fit Tracker", description: "Seamless Health Monitoring at Your Fingertips", link: "https://github.com/FitTechTrackerOrg/FitTechTracker", team_name: "FitInnovators", user_id: 1, hackathon_id: 1)
Entry.create(title: "WellWarriors", description: "Promoting Holistic Wellbeing with Technology", link: "https://github.com/WellnessWarriorsTeam/WellnessWarriors", team_name: "WellWizards", user_id: 1, hackathon_id: 1)
Entry.create(title: "HealthConnect", description: "All-in-One Platform for Personal Wellness Management", link: "https://github.com/HealthHubConnect/HealthHubConnect", team_name: "HealthTechies", user_id: 1, hackathon_id: 1)

Entry.create(title: "AISolutions", description: "Harnessing AI to Address Social Challenges and Create Positive Impact in Communities.", link: "https://github.com/AI4GoodSolutionsOrg/AI4GoodSolutions", team_name: "AIMakers", user_id: 1, hackathon_id: 2)
Entry.create(title: "AIImpact", description: "Leveraging AI's Potential to Drive Meaningful Change and Improve Lives Worldwide.", link: "https://github.com/SocialAIImpactTeam/SocialAIImpact", team_name: "AIDreamers", user_id: 1, hackathon_id: 2)
Entry.create(title: "CompassAInate", description: "Empowering Humanity through AI, Fostering Compassion, and Enhancing Social Well-being.", link: "https://github.com/CompassionateAITech/CompassionateAI", team_name: "TechInnovators", user_id: 1, hackathon_id: 2)

Entry.create(title: "EduPlay", description: "An Immersive Educational Gaming Experience, Where Learning Meets Adventure and Fun.", link: "https://github.com/EduPlayQuest/EduPlayQuest", team_name: "EduTechvators", user_id: 1, hackathon_id: 3)
Entry.create(title: "GameAcademy", description: "A Gamified Learning Platform, Uniting Education and Entertainment to Inspire Young Minds.", link: "https://github.com/GameEdAcademy/GameEdAcademy", team_name: "SenseCreators", user_id: 1, hackathon_id: 3)
Entry.create(title: "LearnGamezone", description: "Creating an Engaging World of Games to Foster Knowledge and Skill Development in Education.", link: "https://github.com/LearnGamingZone/LearnGamingZone", team_name: "LearnQuesters", user_id: 1, hackathon_id: 3)

Entry.create(title: "EarthSavers", description: "A Collaborative Initiative to Protect Our Planet and Implement Sustainable Solutions for a Greener Future.", link: "https://github.com/EarthSaversOrg/EarthSavers", team_name: "EarthGuardians", user_id: 1, hackathon_id: 4)
Entry.create(title: "GlobalHeroes", description: "Empowering Change-Makers Worldwide to Tackle Global Challenges and Make a Positive Impact on Humanity.", link: "https://github.com/GlobalHeroesTeam/GlobalHeroes", team_name: "ImpactForce", user_id: 1, hackathon_id: 4)
Entry.create(title: "WorldRescue", description: "Innovative Technologies and Strategies for Rapid Response and Effective Disaster Relief, Saving Lives Across the Globe.", link: "https://github.com/WorldRescueTech/WorldRescue", team_name: "RescueTechers", user_id: 1, hackathon_id: 4)

hackathon_themes = [
    "FutureTech Quest",
    "Innovation Odyssey",
    "Data Dives",
    "EcoSolutions",
    "HealthTech Fusion",
    "Code for Good",
    "Mindful Machines",
    "Sustainable Hacks",
    "Augmented Realities",
    "Quantum Quandaries"
  ]
  
  hackathon_themes.each do |theme|
    HackathonName.create(name: theme)
  end