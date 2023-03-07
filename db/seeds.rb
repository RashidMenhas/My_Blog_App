# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


authors = User.create([
                        { name: 'Sami Khan', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgun52C9r2eQQWMc2ndnAeKbiSVRYQPBP9rEIyUmbUl0wRqurEV1nWrVuMAm1joruWCUw&usqp=CAU',
                          bio: 'Rebel fighter from Kenari.An accomplished Alliance Intelligence officer with combat field experience, Captain Cassian Andor commands respect from his Rebel troops with his ability to keep a cool head under fire and complete his missions with minimal resources.', email: 'samiullah@gmail.com', password: 'samiullah', password_confirmation: 'samiullah', role: 'admin' },
                        { name: 'Momanyi Hassan', photo: 'https://www.simplilearn.com/ice9/free_resources_article_thumb/tester-or-developer-what-suits-you-the-most.jpg',
                          bio: 'A mysterious man with an eye for valuable finds, Luthen Rael will go to great lengths and traverse the galaxy to locate the pieces he needs to achieve his goals. A chameleon in dress and identity, Luthen capably hides behind countless faces and identities as the need arises.', email: 'hassan@gmail.com', password: 'hassan', password_confirmation: 'hassan' },
                        { name: 'Smith Caleen', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZHEafypiXm7YaG1idbI5oxkMIC3NYxZ0M5g&usqp=CAU',
                          bio: 'Bix Caleen was a human female and mechanic who was the owner of the Caleen Salyard on the Free Trade sector planet of Ferrix. She worked alongside Timm Karlo, who was also her lover. She was close with her ex-boyfriend, Cassian Andor, who trusted her greatly. She also had offworld connections, namely Luthen Rael.', email: 'smith@gmail.com', password: 'smith1', password_confirmation: 'smith1' },
                        { name: 'David Karn',
                          photo: 'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/3cIZo9bfq14o3zy3JsPG7r/95779d9ecb6ba5eeb6005a9482bcc3d0/GettyImages-1209452765.jpg?w=1500&h=680&q=60&fit=fill&f=faces&fm=jpg&fl=progressive&auto=format%2Ccompress&dpr=1&w=1000&h=', bio: 'Syril Karn believes wholeheartedly in order and justice. The ambitious inspector hopes to make a name for himself within the ranks of the Empire by quelling signs of rebellious activity and exposing lawbreakers.', email: 'david@gmail.com', password: 'david1', password_confirmation: 'david1' },
                        { name: 'Petro Linus Mosk', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSml7B9rrdqdrwc7AzvHO3GdZAMyDzNoTdqOw&usqp=CAU',
                          bio: 'Sergeant Linus Mosk was a human male who served in Preox-Morlana\'s Pre-Mor Enforcement. Following the murder of two Preox-Morlana employees in 5 BBY, Mosk was summoned to Corporate Security Headquarters on the planet Morlana One to meet with Deputy Inspector Syril Karn.', email: 'petro@gmail.com', password: 'petro1', password_confirmation: 'petro1' },
                        { name: 'Rashid Menhas',
                          photo: 'https://media.istockphoto.com/id/1344688156/photo/portrait-of-a-man-using-a-computer-in-a-modern-office.jpg?b=1&s=170667a&w=0&k=20&c=AAVVOvN9uY1Rd_0QsWb8WvBN-4VSUdCORiZx51s5OLc=', bio: 'A member of the Daughters of Ferrix, Maarva is revered for the sharpness of her mind and firmness of her spirit. Despite the years and her failing health, she has a strong independent streak in her, something she shares with her adopted son, Cassian.', email: 'rashid@gmail.com', password: 'rashid', password_confirmation: 'rashid' },
                        { name: 'Haadii', photo: 'https://i.ytimg.com/vi/jw98oh8HF5o/maxresdefault.jpg', bio: 'A battered veteran of the Clone Wars as well as the ongoing rebellion against the Empire, Saw Gerrera leads a band of Rebel extremists. Saw has lost much in his decades of combat, but occasional flashes of the charismatic and caring man he once was shine through his calloused exterior', email: 'haadi@gmail.com', password: 'haadi1', password_confirmation: 'haadi1' }
                      ])

posts = Post.create([
                      { author_id: 1, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out' },
                      { author_id: 1, title: 'StormTroppers Weakness',
                        text: 'Hit them with blasters on the there chest plates, they will fall and hit the ground. In the air Ti-Fighters are fast but slow on corners.' },
                      { author_id: 1, title: 'Help is on the Way',
                        text: 'The Empire is pressing but fear not we are sending a troop, the Millenium is on it\'s way with reinforcements' },
                      { author_id: 1, title: 'Aldhani Strike',
                        text: 'The 80 Million credits stolen from the Empire, we got them where we want. We will help the refugees and keep fighting' },
                      { author_id: 7, title: 'Aldhani Strike',
                        text: 'The 80 Million credits stolen from the Empire, we got them where we want. We will help the refugees and keep fighting' },
                      { author_id: 7, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out' },
                      { author_id: 2, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out' },
                      { author_id: 3, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out' }
                    ])

comments = Comment.create([
                            { author_id: 2, post_id: 1, text: 'Don\'t miss that hit' },
                            { author_id: 7, post_id: 1, text: 'We will keep on doing so' },
                            { author_id: 3, post_id: 1, text: 'Thank you for your support' },
                            { author_id: 1, post_id: 2, text: 'Noted Andor, thans for the update' }
                          ])

likes = Like.create([
                      { author_id: 2, post_id: 1 },
                      { author_id: 3, post_id: 1 },
                      { author_id: 1, post_id: 7 },
                      { author_id: 5, post_id: 1 },
                      { author_id: 6, post_id: 7 }
                    ])

                    # Generate access token for API

                    api_key = ApiKey.create 