

library(readxl)
tmsinph<-read_excel("C:/r_workingfiles/tmsinph.xlsx")
View(tmsinph)
name<-tmsinph$name
ad<-tmsinph$ad

gc<-geocode(enc2utf8(ad))

df<-data.frame(name=name,
               lon=gc$lon,
               lat=gc$lat)

cen<-c(mean(df$lon),mean(df$lat))
#cen<-c(128.64,35.21)

map<-get_googlemap(center = cen,
                   maptype = "roadmap",
                   zoom=13,
                   markers = gc)

ggmap(map)

gmap<- ggmap(map)

gmap+geom_text(data=df,
               aes(x=lon,y=lat),
               size=3,
               label=df$name)





library(ggmap)
key='AIzaSyA2ZGk-qeto2HGeFP_XDN0Y1fSt44gfLg0'
register_google(key,account_type = 'standard')
cent<-c(lon=mean(tmsinbusan$lon),lat=mean(tmsinbusan$lat))
map<-ggmap(get_googlemap(center = cent,zoom=10,maptype = 'roadmap',scale = 2))
map+geom_point(data = tmsinbusan,aes(x=lon,y=lat),color="blue")