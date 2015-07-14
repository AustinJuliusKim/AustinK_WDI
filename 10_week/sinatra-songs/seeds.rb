require 'mongoid'
Mongoid.load!("./mongoid.yml", :development)
require './models/song'

Song.destroy_all

Song.create(title:"Ac-cent-tchu-ate the Positive", year: 1950)
Song.create(title:"Adeste Fideles", year: 1946)
Song.create(title:"After You've Gone", year: 1984)
Song.create(title:"Ain't She Sweet", year: 1962)
Song.create(title:"All Alone", year: 1962)
Song.create(title:"All By Myself", year: 1976)
Song.create(title:"All I Do Is Dream of You", year: 1958)
Song.create(title:"All of Me", year: 1946)
Song.create(title:"All of You", year: 1979)
Song.create(title:"All or Nothing at All", year: 1939)
Song.create(title:"All the Things You Are", year: 1945)
Song.create(title:"All the Way", year: 1957)
Song.create(title:"Almost Like Being in Love", year: 1947)
Song.create(title:"Always", year: 1946)
Song.create(title:"America the Beautiful", year: 1945)
Song.create(title:"Among My Souvenirs", year: 1946)
Song.create(title:"Angel Eyes", year: 1958)
Song.create(title:"Anything Goes", year: 1956)
Song.create(title:"April in Paris", year: 1950)
Song.create(title:"Are You Lonesome Tonight?", year: 1962)
Song.create(title:"Around the World", year: 1957)
Song.create(title:"As Time Goes By", year: 1961)
Song.create(title:"At Long Last Love", year: 1956)
Song.create(title:"Autumn in New York", year: 1947)
Song.create(title:"Autumn Leaves", year: 1957)
Song.create(title:"Ave Maria", year: 1945)
Song.create(title:"Baby, Won't You Please Come Home?", year: 1957)
Song.create(title:"Bad, Bad Leroy Brown", year: 1973)
Song.create(title:"Bali Ha'i", year: 1949)
Song.create(title:"Bang Bang (My Baby Shot Me Down)", year: 1973)
Song.create(title:"Baubles, Bangles and Beads", year: 1958)
Song.create(title:"Begin the Beguine", year: 1946)
Song.create(title:"Bein' Green", year: 1970)
Song.create(title:"The Best is Yet to Come", year: 1964)
Song.create(title:"Between the Devil and the Deep Blue Sea", year: 1959)
Song.create(title:"Bewitched, Bothered and Bewildered", year: 1957,)
Song.create(title:"The Birth of the Blues", year: 1952)
Song.create(title:"Blame It on My Youth", year: 1956)
Song.create(title:"Blue Hawaii", year: 1957)
Song.create(title:"Blue Moon", year: 1960)
Song.create(title:"Blue Skies", year: 1941)
Song.create(title:"Blues in the Night", year: 1958)
Song.create(title:"Body and Soul", year: 1947)
Song.create(title:"Born Free", year: 1967)
Song.create(title:"Both Sides Now", year: 1968)
Song.create(title:"Brazil", year: 1957)
Song.create(title:"But Beautiful", year: 1947)
Song.create(title:"But Not for Me", year: 1979)
Song.create(title:"By the Time I Get to Phoenix", year: 1968)
Song.create(title:"Bye Bye Blackbird", year: 1988)
Song.create(title:"Call Me", year: 1966)
Song.create(title:"Call Me Irresponsible", year: 1963)
Song.create(title:"Can't We Be Friends", year: 1955)
Song.create(title:"Carolina in the Morning", year: 1963)
Song.create(title:"C'est Magnifique", year: 1959)
Song.create(title:"Change Partners", year: 1967)
Song.create(title:"Charmaine", year: 1962)
Song.create(title:"Chattanoogie Shoe Shine Boy", year: 1950)
Song.create(title:"Cheek to Cheek", year: 1958)
Song.create(title:"Chicago (That Toddlin' Town)", year: 1957)
Song.create(title:"The Christmas Song", year: 1957)
Song.create(title:"The Christmas Waltz", year: 1954)
Song.create(title:"Ciribiribin", year: 1939)
Song.create(title:"Close to You", year: 1943)
Song.create(title:"(They Long to Be) Close to You", year: 1970)
Song.create(title:"The Coffee Song", year: 1946)
Song.create(title:"Come Back to Sorrento", year: 1950)
Song.create(title:"Come Dance with Me", year: 1958)
Song.create(title:"Come Fly with Me", year: 1957)
Song.create(title:"Come Rain or Come Shine", year: 1961)
Song.create(title:"The Continental", year: 1950)
Song.create(title:"A Cottage for Sale", year: 1959)
Song.create(title:"The Cradle Song", year: 1944)
Song.create(title:"Cuddle up a Little Closer, Lovey Mine", year: 1958)
Song.create(title:"Dancing in the Dark", year: 1958)
Song.create(title:"Dancing on the Ceiling", year: 1955)
Song.create(title:"Day by Day", year: 1945)
Song.create(title:"Day In, Day Out", year: 1953)
Song.create(title:"Manhã De Carnaval (A Day in the Life of a Fool)", year: 1969)
Song.create(title:"The Days of Wine and Roses", year: 1964)
Song.create(title:"Desafinado", year: 1969)
Song.create(title:"Don'cha Go 'Way Mad", year: 1962)
Song.create(title:"Don't Cry, Joe", year: 1949)
Song.create(title:"Don't Get Around Much Anymore", year: 1965)
Song.create(title:"Don't Make a Beggar of Me", year: 1953)
Song.create(title:"Don't Sleep in the Subway", year: 1967)
Song.create(title:"Don't Take Your Love From Me", year: 1961)
Song.create(title:"Don't Worry 'Bout Me", year: 1953)
Song.create(title:"Downtown", year: 1966)
Song.create(title:"Dream", year: 1945)
Song.create(title:"Dream a Little Dream of Me", year: 1958)
Song.create(title:"Drinking Again", year: 1967)
Song.create(title:"East of the Sun (and West of the Moon)", year: 1940)
Song.create(title:"Ebb Tide", year: 1958)
Song.create(title:"Embraceable You", year: 1944)
Song.create(title:"Evergreen (Love Theme from A Star Is Born)", year: 1976)
Song.create(title:"Everybody Loves Somebody", year: 1947)
Song.create(title:"Everything Happens to Me", year: 1941)
Song.create(title:"Exactly Like You", year: 1949)
Song.create(title:"Falling In Love with Love", year: 1961)
Song.create(title:"A Fellow Needs a Girl", year: 1947)
Song.create(title:"A Fine Romance", year: 1960)
Song.create(title:"The First Noël", year: 1957)
Song.create(title:"Five Minutes More", year: 1946)
Song.create(title:"Fly Me to the Moon", year: 1964)
Song.create(title:"A Foggy Day", year: 1953)
Song.create(title:"Fools Rush In (Where Angels Fear to Tread)", year: 1940)
Song.create(title:"For Once in My Life", year: 1969)
Song.create(title:"For the Good Times", year: 1979)
Song.create(title:"Forget Domani", year: 1965)
Song.create(title:"French Foreign Legion", year: 1958)
Song.create(title:"Frenesi", year: 1941)
Song.create(title:"From This Moment On", year: 1956)
Song.create(title:"Full Moon and Empty Arms", year: 1945)
Song.create(title:"The Gal that Got Away", year: 1954)
Song.create(title:"A Garden in the Rain", year: 1962)
Song.create(title:"Gentle on My Mind", year: 1968)
Song.create(title:"Get Happy", year: 1954)
Song.create(title:"Get Me to the Church on Time", year: 1966)
Song.create(title:"The Girl from Ipanema", year: 1967)
Song.create(title:"The Girl Next Door", year: 1953)
Song.create(title:"Glad to Be Unhappy", year: 1955)
Song.create(title:"Goin' Out of My Head", year: 1969)
Song.create(title:"The Good Life", year: 1964)
Song.create(title:"Gone with the Wind", year: 1958)
Song.create(title:"Goodbye", year: 1958)
Song.create(title:"Goodnight Irene", year: 1950)
Song.create(title:"Goodnight My Love", year: 1958)
Song.create(title:"Goodnight Sweetheart", year: 1958)
Song.create(title:"Goody Goody", year: 1962)
Song.create(title:"Granada", year: 1961)
Song.create(title:"Guess I'll Hang My Tears Out to Dry", year: 1946)
Song.create(title:"The Gypsy", year: 1962)
Song.create(title:"Hallelujah, I Love Her So", year: 1969)
Song.create(title:"Happy Birthday to You", year: 1994)
Song.create(title:"Hark the Herald Angels Sing", year: 1957)
Song.create(title:"Have You Met Miss Jones?", year: 1960)
Song.create(title:"Have Yourself a Merry Little Christmas", year: 1947)
Song.create(title:"Hello, Dolly!", year: 1964)
Song.create(title:"Hello, Young Lovers", year: 1954)
Song.create(title:"Here's That Rainy Day", year: 1959)
Song.create(title:"High Hopes", year: 1959)
Song.create(title:"Hit the Road to Dreamland", year: 1958)
Song.create(title:"Home On The Range", year: 1946)
Song.create(title:"Hooray for Love", year: 1982)
Song.create(title:"How About You?", year: 1941)
Song.create(title:"How Deep is the Ocean?", year: 1946)
Song.create(title:"How Do You Keep the Music Playing?", year: 1983)
Song.create(title:"How High the Moon", year: 1967)
Song.create(title:"How Insensitive", year: 1967)
Song.create(title:"A Hundred Years from Today", year: 1984)
Song.create(title:"I Can't Get Started", year: 1959)
Song.create(title:"I Can't Give You Anything But Love", year: 1959)
Song.create(title:"I Can't Stop Loving You", year: 1964)
Song.create(title:"I Concentrate on You", year: 1947)
Song.create(title:"I Could Have Danced All Night", year: 1958)
Song.create(title:"I Could Write a Book", year: 1952)
Song.create(title:"I Couldn't Sleep a Wink Last Night", year: 1943)
Song.create(title:"I Cover the Waterfront", year: 1957)
Song.create(title:"I Didn''t Know What Time It Was", year: 1957)
Song.create(title:"I Don't Know Why (I Just Do)", year: 1945)
Song.create(title:"I Don't Stand a Ghost of a Chance with You", year: 1945)
Song.create(title:"I Dream of You", year: 1944)
Song.create(title:"I Fall in Love Too Easily", year: 1944)
Song.create(title:"I Get a Kick Out of You", year: 1953)
Song.create(title:"I Get Along Without You Very Well (Except Sometimes)", year: 1955)
Song.create(title:"I Got It Bad (And That Ain't Good)", year: 1956)
Song.create(title:"I Gotta Right to Sing the Blues", year: 1962)
Song.create(title:"I Guess I'll Have to Change My Plan", year: 1956)
Song.create(title:"I Had the Craziest Dream", year: 1979)
Song.create(title:"I Hadn't Anyone Till You", year: 1961)
Song.create(title:"I Have But One Heart", year: 1945)
Song.create(title:"I Have Dreamed", year: 1963)
Song.create(title:"I Left My Heart in San Francisco", year: 1962)
Song.create(title:"I Love Paris", year: 1959)
Song.create(title:"I Love You", year: 1946)
Song.create(title:"I May Be Wrong (But I Think You're Wonderful)", year: 1958)
Song.create(title:"I Only Have Eyes for You", year: 1945)
Song.create(title:"I See Your Face Before Me", year: 1955)
Song.create(title:"I Should Care", year: 1945)
Song.create(title:"I Sing the Songs", year: 1976)
Song.create(title:"I Thought About You", year: 1955)
Song.create(title:"I Wanna Be Around", year: 1964)
Song.create(title:"I Whistle a Happy Tune", year: 1951)
Song.create(title:"I Will Wait for You", year: 1966)
Song.create(title:"I Wish I Were in Love Again", year: 1956)
Song.create(title:"I Wish You Love", year: 1964)
Song.create(title:"I Wished on the Moon", year: 1965)
Song.create(title:"I Won't Dance", year: 1956)
Song.create(title:"If", year: 1974)
Song.create(title:"If I Didn't Care", year: 1939)
Song.create(title:"If I Had You", year: 1947)
Song.create(title:"If I Should Lose You", year: 1984)
Song.create(title:"If This Isn't Love", year: 1954)
Song.create(title:"If You Go Away", year: 1969)
Song.create(title:"If You Never Come to Me", year: 1967)
Song.create(title:"I'll Be Around", year: 1955)
Song.create(title:"I'll Be Seeing You", year: 1940)
Song.create(title:"I'll Never Be The Same", year: 1955)
Song.create(title:"I'll Never Smile Again", year: 1940)
Song.create(title:"I'll Remember April", year: 1961)
Song.create(title:"I'll See You Again", year: 1961)
Song.create(title:"I'll See You in My Dreams", year: 1940)
Song.create(title:"Ill Wind", year: 1955)
Song.create(title:"I'm a Fool to Want You", year: 1951)
Song.create(title:"I'm Beginning to See the Light", year: 1962)
Song.create(title:"I'm Getting Sentimental Over You", year: 1961)
Song.create(title:"I'm Glad There Is You", year: 1947)
Song.create(title:"I'm Gonna Sit Right Down and Write Myself a Letter", year: 1954)
Song.create(title:"I'm in the Mood for Love", year: 1942)
Song.create(title:"I'm Walking Behind You", year: 1953)
Song.create(title:"Imagination", year: 1940)
Song.create(title:"The Impossible Dream", year: 1966)
Song.create(title:"In the Cool, Cool, Cool of the Evening", year: 1964)
Song.create(title:"In the Still of the Night", year: 1960)
Song.create(title:"In the Wee Small Hours of the Morning", year: 1955)
Song.create(title:"Innamorata", year: 1957)
Song.create(title:"Isle of Capri", year: 1957)
Song.create(title:"Isn't She Lovely?", year: 1979)
Song.create(title:"It Came Upon a Midnight Clear", year: 1947)
Song.create(title:"It Could Happen to You", year: 1956)
Song.create(title:"It Had to Be You", year: 1963)
Song.create(title:"It Might as Well Be Spring", year: 1961)
Song.create(title:"It Never Entered My Mind", year: 1947)
Song.create(title:"It Was a Very Good Year", year: 1965)
Song.create(title:"It's All Right With Me", year: 1959)
Song.create(title:"It's Been a Long, Long Time", year: 1945)
Song.create(title:"It's Only a Paper Moon", year: 1950)
Song.create(title:"It's Only Money", year: 1951)
Song.create(title:"I've Got a Crush on You", year: 1947)
Song.create(title:"I've Got My Eyes on You", year: 1940)
Song.create(title:"I've Got My Love to Keep Me Warm", year: 1960)
Song.create(title:"I've Got the World on a String", year: 1953)
Song.create(title:"I've Got You Under My Skin", year: 1956)
Song.create(title:"I've Grown Accustomed to Her Face", year: 1962)
Song.create(title:"I've Heard That Song Before", year: 1961)
Song.create(title:"I've Never Been in Love Before", year: 1963)
Song.create(title:"Jeepers Creepers", year: 1954)
Song.create(title:"Jingle Bells", year: 1946)
Song.create(title:"June in January", year: 1942)
Song.create(title:"Just in Time", year: 1958)
Song.create(title:"Just One of Those Things", year: 1954)
Song.create(title:"Just the Way You Are", year: 1979)
Song.create(title:"The Lady Is a Tramp", year: 1956)
Song.create(title:"The Lamp Is Low", year: 1939)
Song.create(title:"Laura", year: 1947)
Song.create(title:"Learnin' the Blues", year: 1955)
Song.create(title:"Leaving on a Jet Plane", year: 1970)
Song.create(title:"Let It Snow! Let It Snow! Let It Snow!", year: 1950)
Song.create(title:"Let There Be Love", year: 1962)
Song.create(title:"Let's Do It, Let's Fall in Love", year: 1959)
Song.create(title:"Let's Face the Music and Dance", year: 1960)
Song.create(title:"Let's Fall in Love", year: 1960)
Song.create(title:"Let's Get Away from It All", year: 1941)
Song.create(title:"Let's Put Out the Lights (and Go to Sleep)", year: 1958)
Song.create(title:"Let's Take An Old-Fashioned Walk", year: 1949)
Song.create(title:"Like Someone in Love", year: 1953)
Song.create(title:"The Little Drummer Boy", year: 1964)
Song.create(title:"Little Girl Blue", year: 1953)
Song.create(title:"Little Green Apples", year: 1968)
Song.create(title:"Long Ago (And Far Away)", year: 1943)
Song.create(title:"The Lord's Prayer", year: 1949)
Song.create(title:"Love and Marriage", year: 1955)
Song.create(title:"Love Is a Many-Splendored Thing", year: 1964)
Song.create(title:"Love is Here to Stay", year: 1955)
Song.create(title:"Love Is Just Around the Corner", year: 1962)
Song.create(title:"(Love Is) The Tender Trap", year: 1955)
Song.create(title:"Love Me Tender", year: 1979)
Song.create(title:"Love Walked In", year: 1961)
Song.create(title:"A Lovely Way to Spend an Evening", year: 1943)
Song.create(title:"Lover", year: 1950)
Song.create(title:"Luck Be a Lady", year: 1963)
Song.create(title:"Lush Life", year: 1958)
Song.create(title:"MacArthur Park", year: 1979)
Song.create(title:"Mack the Knife", year: 1984)
Song.create(title:"Make Believe", year: 1946)
Song.create(title:"Makin' Whoopee", year: 1956)
Song.create(title:"Mama Will Bark", year: 1951)
Song.create(title:"Mam'selle", year: 1947)
Song.create(title:"The Man I Love", year: 1957)
Song.create(title:"Maria", year: 1962)
Song.create(title:"Maybe You'll Be There", year: 1957)
Song.create(title:"Me and My Shadow", year: 1962)
Song.create(title:"Meet Me Tonight in Dreamland", year: 1954)
Song.create(title:"Melody of Love", year: 1954)
Song.create(title:"Memories Are Made of This", year: 1957)
Song.create(title:"Memories of You", year: 1956)
Song.create(title:"Mighty Lak' a Rose", year: 1945)
Song.create(title:"Mind if I Make Love to You?", year: 1956)
Song.create(title:"Mistletoe and Holly", year: 1957)
Song.create(title:"Misty", year: 1961)
Song.create(title:"Mood Indigo", year: 1955)
Song.create(title:"Moody River", year: 1968)
Song.create(title:"Moon River", year: 1964)
Song.create(title:"Moon Song", year: 1965)
Song.create(title:"Moonlight Becomes You", year: 1965)
Song.create(title:"Moonlight In Vermont", year: 1957)
Song.create(title:"Moonlight Serenade", year: 1965)
Song.create(title:"More", year: 1964)
Song.create(title:"The More I See You", year: 1983)
Song.create(title:"More Than You Know", year: 1979)
Song.create(title:"Mr. Success", year: 1958)
Song.create(title:"Mrs. Robinson", year: 1969)
Song.create(title:"My Baby Just Cares for Me", year: 1966)
Song.create(title:"My Blue Heaven", year: 1950)
Song.create(title:"My Buddy", year: 1939)
Song.create(title:"My Foolish Heart", year: 1988)
Song.create(title:"My Funny Valentine", year: 1953)
Song.create(title:"My Heart Stood Still", year: 1963)
Song.create(title:"My Kind of Town (Chicago Is)", year: 1964)
Song.create(title:"My Melancholy Baby", year: 1945)
Song.create(title:"My One and Only Love", year: 1953)
Song.create(title:"My Romance", year: 1946)
Song.create(title:"My Shining Hour", year: 1979)
Song.create(title:"My Way", year: 1969)
Song.create(title:"Nancy (With the Laughing Face)", year: 1944)
Song.create(title:"Nature Boy", year: 1948)
Song.create(title:"The Nearness of You", year: 1947)
Song.create(title:"New York, New York", year: 1979)
Song.create(title:"Nevertheless (I'm in Love with You)", year: 1950)
Song.create(title:"Nice Work if You Can Get It", year: 1956)
Song.create(title:"Night and Day", year: 1942)
Song.create(title:"The Night We Called it a Day", year: 1942)
Song.create(title:"A Nightingale Sang in Berkeley Square", year: 1962)
Song.create(title:"Nobody Wins", year: 1973)
Song.create(title:"Not as a Stranger", year: 1955)
Song.create(title:"Now Is the Hour", year: 1962)
Song.create(title:"O Little Town of Bethlehem", year: 1947)
Song.create(title:"Ode to Billie Joe", year: 1967)
Song.create(title:"Oh How I Miss You Tonight", year: 1962)
Song.create(title:"Oh Marie", year: 1957)
Song.create(title:"Oh! Look at Me Now", year: 1941)
Song.create(title:"Oh, What a Beautiful Mornin", year: 1943)
Song.create(title:"Old MacDonald Had a Farm", year: 1960)
Song.create(title:"Ol' Man River", year: 1944)
Song.create(title:"Old Devil Moon", year: 1956)
Song.create(title:"On a Little Street in Singapore", year: 1939)
Song.create(title:"On the Road to Mandalay", year: 1957)
Song.create(title:"On the Sunny Side of the Street", year: 1961)
Song.create(title:"Once in a While", year: 1940)
Song.create(title:"Once Upon a Time", year: 1965)
Song.create(title:"One for My Baby (and One More for the Road)", year: 1947)
Song.create(title:"The One I Love (Belongs to Somebody Else)", year: 1940)
Song.create(title:"One Note Samba", year: 1969)
Song.create(title:"Only Forever", year: 1940)
Song.create(title:"Out of Nowhere", year: 1942)
Song.create(title:"Over the Rainbow", year: 1945)
Song.create(title:"Pale Moon", year: 1941)
Song.create(title:"Peachtree Street", year: 1950)
Song.create(title:"Pennies from Heaven", year: 1956)
Song.create(title:"People Will Say We're in Love", year: 1943)
Song.create(title:"Pick Yourself Up", year: 1962)
Song.create(title:"Please Be Kind", year: 1962)
Song.create(title:"Please Don't Talk About Me When I'm Gone", year: 1961)
Song.create(title:"Poinciana", year: 1946)
Song.create(title:"Polka Dots and Moonbeams", year: 1940)
Song.create(title:"Poor Butterfly", year: 1967)
Song.create(title:"A Pretty Girl is Like a Melody", year: 1942)
Song.create(title:"Prisoner Of Love", year: 1961)
Song.create(title:"P.S. I Love You", year: 1956)
Song.create(title:"Put Your Dreams Away (For Another Day)", year: 1945)
Song.create(title:"Quiet Nights of Quiet Stars", year: 1967)
Song.create(title:"Reaching for the Moon", year: 1965)
Song.create(title:"Roses of Picardy", year: 1962)
Song.create(title:"Santa Claus Is Coming to Town", year: 1947)
Song.create(title:"Saturday Night (Is the Loneliest Night of the Week)", year: 1944)
Song.create(title:"The Second Time Around", year: 1960,)
Song.create(title:"Secret Love", year: 1964)
Song.create(title:"Send in the Clowns", year: 1973)
Song.create(title:"Sentimental Journey", year: 1961)
Song.create(title:"September in the Rain", year: 1960)
Song.create(title:"The September of My Years", year: 1965)
Song.create(title:"September Song", year: 1946)
Song.create(title:"Serenade In Blue", year: 1962)
Song.create(title:"The Shadow of Your Smile", year: 1966)
Song.create(title:"Sheila", year: 1950)
Song.create(title:"Side By Side", year: 1957)
Song.create(title:"Silent Night", year: 1945)
Song.create(title:"On a Slow Boat to China", year: 1957)
Song.create(title:"Speak Low", year: 1943)
Song.create(title:"So in Love", year: 1963)
Song.create(title:"Softly As I Leave You", year: 1964)
Song.create(title:"Soliloquy", year: 1946)
Song.create(title:"Some Enchanted Evening", year: 1949,)
Song.create(title:"Somebody Loves Me", year: 1940)
Song.create(title:"Someone To Watch Over Me", year: 1945)
Song.create(title:"Somethin' Stupid", year: 1967)
Song.create(title:"Something", year: 1970)
Song.create(title:"Something Wonderful", year: 1957)
Song.create(title:"Something's Gotta Give", year: 1958)
Song.create(title:"Somewhere Along the Way", year: 1961)
Song.create(title:"Somewhere My Love (Lara's Theme)", year: 1966)
Song.create(title:"The Song is Ended (but the Melody Lingers On)", year: 1962)
Song.create(title:"The Song Is You", year: 1942)
Song.create(title:"Song Sung Blue", year: 1979)
Song.create(title:"Sonny Boy", year: 1944)
Song.create(title:"South of the Border", year: 1953)
Song.create(title:"Spring Is Here", year: 1947)
Song.create(title:"Stardust", year: 1940)
Song.create(title:"Stars Fell on Alabama", year: 1956)
Song.create(title:"Stompin' at the Savoy", year: 1967)
Song.create(title:"Stormy Weather", year: 1944)
Song.create(title:"Strangers In The Night", year: 1966)
Song.create(title:"Street of Dreams", year: 1942)
Song.create(title:"Summer Wind", year: 1966)
Song.create(title:"Sunday, Monday or Always", year: 1943)
Song.create(title:"Sunny", year: 1967)
Song.create(title:"The Sunshine of Your Smile", year: 1941)
Song.create(title:"The Surrey with the Fringe on Top", year: 1945)
Song.create(title:"Sweet Caroline", year: 1974)
Song.create(title:"Sweet Lorraine", year: 1946)
Song.create(title:"The Sweetheart of Sigma Chi", year: 1957)
Song.create(title:"Swinging on a Star", year: 1964)
Song.create(title:"Swingin' Down the Lane", year: 1956)
Song.create(title:"Take Me Out to the Ball Game", year: 1946)
Song.create(title:"Take My Love", year: 1950)
Song.create(title:"Take the A Train", year: 1965)
Song.create(title:"Taking a Chance on Love", year: 1954)
Song.create(title:"Tangerine", year: 1962)
Song.create(title:"Tea for Two", year: 1947)
Song.create(title:"Teach Me Tonight", year: 1984)
Song.create(title:"Tenderly", year: 1980)
Song.create(title:"Thanks for the Memory", year: 1981)
Song.create(title:"That Old Black Magic", year: 1946)
Song.create(title:"That Old Feeling", year: 1947)
Song.create(title:"That's All", year: 1961)
Song.create(title:"That's For Me", year: 1945)
Song.create(title:"That's Life", year: 1966)
Song.create(title:"Them There Eyes", year: 1982)
Song.create(title:"Theme from New York, New York", year: 1979)
Song.create(title:"There Are Such Things", year: 1942)
Song.create(title:"There Will Never Be Another You", year: 1961)
Song.create(title:"There's A Long Long Trail", year: 1954)
Song.create(title:"There's a Small Hotel", year: 1957)
Song.create(title:"There's No Business Like Show Business", year: 1946)
Song.create(title:"There's No You", year: 1944)
Song.create(title:"These Boots Are Made for Walkin", year: 1966)
Song.create(title:"These Foolish Things (Remind Me of You)", year: 1945)
Song.create(title:"They All Laughed", year: 1979)
Song.create(title:"They Can't Take That Away From Me", year: 1953)
Song.create(title:"The Things We Did Last Summer", year: 1946)
Song.create(title:"This Can't Be Love", year: 1958)
Song.create(title:"This Is No Dream", year: 1939)
Song.create(title:"This Love of Mine", year: 1941)
Song.create(title:"This Town", year: 1967)
Song.create(title:"Three Coins in the Fountain", year: 1954)
Song.create(title:"Tie a Yellow Ribbon Round the Ole Oak Tree", year: 1974)
Song.create(title:"Till We Meet Again", year: 1954)
Song.create(title:"Time After Time", year: 1946)
Song.create(title:"To Love a Child", year: 1981)
Song.create(title:"Together", year: 1962)
Song.create(title:"Too Close for Comfort", year: 1958)
Song.create(title:"Too Marvelous for Words", year: 1956)
Song.create(title:"Try a Little Tenderness", year: 1945)
Song.create(title:"Twelve Days Of Christmas", year: 1968)
Song.create(title:"Two Hearts, Two Kisses (Make One Love)", year: 1955)
Song.create(title:"Until the Real Thing Comes Along", year: 1984)
Song.create(title:"Up, Up and Away", year: 1967)
Song.create(title:"Violets for Your Furs", year: 1941)
Song.create(title:"The Very Thought of You", year: 1962)
Song.create(title:"Volare", year: 1980)
Song.create(title:"Wait Till You See Her", year: 1956)
Song.create(title:"Water to Drink (Agua de Beber)", year: 1969)
Song.create(title:"Wave", year: 1969)
