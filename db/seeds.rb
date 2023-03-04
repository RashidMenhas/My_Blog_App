# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


authors = User.create([
  {name: 'Sami Khan', photo:'https://media-exp1.licdn.com/dms/image/D4D35AQFaDkOdfLLpAA/profile-framedphoto-shrink_400_400/0/1664187403199?e=1671120000&v=beta&t=m2BsdgIXIq-MJ2KC4MGCWDLFS9jgRQysTz0WND3uraQ', bio: 'Rebel fighter from Kenari.An accomplished Alliance Intelligence officer with combat field experience, Captain Cassian Andor commands respect from his Rebel troops with his ability to keep a cool head under fire and complete his missions with minimal resources.', email: 'samiullah@gmail.com', password: 'samiullah', password_confirmation: 'samiullah', role: 'admin'},
  {name: 'Momanyi Hassan', photo: 'https://media-exp1.licdn.com/dms/image/D4D03AQH2iqU1XeNMQw/profile-displayphoto-shrink_400_400/0/1664574084004?e=1675900800&v=beta&t=ttd22TCnoVgsSJ1044GHjTEtM3cdLXw34kRBs9ztt7o', bio: 'A mysterious man with an eye for valuable finds, Luthen Rael will go to great lengths and traverse the galaxy to locate the pieces he needs to achieve his goals. A chameleon in dress and identity, Luthen capably hides behind countless faces and identities as the need arises.', email: 'hassan@gmail.com', password: 'hassan', password_confirmation: 'hassan'},
  {name: 'Smith Caleen', photo: 'https://media-exp1.licdn.com/dms/image/D4D35AQGYW8yz5N2Vpw/profile-framedphoto-shrink_400_400/0/1665468982185?e=1671120000&v=beta&t=nUkb0WEzuEwfn00Q7oC_9wlWizXRVvrGEIUBIYIDENI', bio: 'Bix Caleen was a human female and mechanic who was the owner of the Caleen Salyard on the Free Trade sector planet of Ferrix. She worked alongside Timm Karlo, who was also her lover. She was close with her ex-boyfriend, Cassian Andor, who trusted her greatly. She also had offworld connections, namely Luthen Rael.', email: 'smith@gmail.com', password: 'smith1', password_confirmation: 'smith1'},
  {name: 'David Karn', photo: 'https://media-exp1.licdn.com/dms/image/D4E35AQGFSUKP1Lwasw/profile-framedphoto-shrink_400_400/0/1668545554918?e=1671120000&v=beta&t=BPNBQofLYNtOieW5q0hBPVqTBxcyXxYNU3-cRxXTZEk', bio: 'Syril Karn believes wholeheartedly in order and justice. The ambitious inspector hopes to make a name for himself within the ranks of the Empire by quelling signs of rebellious activity and exposing lawbreakers.', email: 'david@gmail.com', password: 'david1', password_confirmation: 'david1'},
  {name: 'Petro Linus Mosk', photo: 'https://media-exp1.licdn.com/dms/image/C5603AQEWyscvRYS3pQ/profile-displayphoto-shrink_400_400/0/1633387075262?e=1675900800&v=beta&t=h4-lmGql75ZiwbHuI9GS5rZJWpUQlCm1K8VMeqhcwDE', bio: 'Sergeant Linus Mosk was a human male who served in Preox-Morlana\'s Pre-Mor Enforcement. Following the murder of two Preox-Morlana employees in 5 BBY, Mosk was summoned to Corporate Security Headquarters on the planet Morlana One to meet with Deputy Inspector Syril Karn.', email: 'petro@gmail.com', password: 'petro1', password_confirmation: 'petro1'},
  {name: 'Rashid Menhas', photo: 'https://media-exp1.licdn.com/dms/image/D5635AQGxPz0LkpzdVA/profile-framedphoto-shrink_400_400/0/1669796506068?e=1671120000&v=beta&t=G639_yP6iiDC63q-GkNfWeuOaRFCtHWK7Esh4p_oNyA', bio: 'A member of the Daughters of Ferrix, Maarva is revered for the sharpness of her mind and firmness of her spirit. Despite the years and her failing health, she has a strong independent streak in her, something she shares with her adopted son, Cassian.', email: 'rashid@gmail.com', password: 'rashid', password_confirmation: 'rashid'},
  {name: 'Haadii', photo: 'https://media-exp1.licdn.com/dms/image/D4D35AQEPsn2T2iCX5A/profile-framedphoto-shrink_400_400/0/1664560764699?e=1671120000&v=beta&t=KOFT1TejWH231_AKCf-GtxuoJowLhkdd87ihEqtX9Eo', bio: 'A battered veteran of the Clone Wars as well as the ongoing rebellion against the Empire, Saw Gerrera leads a band of Rebel extremists. Saw has lost much in his decades of combat, but occasional flashes of the charismatic and caring man he once was shine through his calloused exterior', email: 'haadi@gmail.com', password: 'haadi1', password_confirmation: 'haadi1'}
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
