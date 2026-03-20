
all: cheminements_pietons_fr.validator.zip cheminements_pietons_fr.style.zip cheminements_pietons_fr.preset.zip

cheminements_pietons_fr.validator.zip: cheminements_pietons.validator.mapcss pedestrian_logo.svg
	rm -f $@
	zip $@ pedestrian_logo.svg
	zip -j $@ cheminements_pietons.validator.mapcss

cheminements_pietons_fr.style.zip: cheminements_pietons.style.mapcss pedestrian_logo.svg
	rm -f $@
	zip $@ pedestrian_logo.svg
	zip -j $@ cheminements_pietons.style.mapcss

cheminements_pietons_fr.preset.zip: cheminements_pietons.preset.xml pedestrian_logo.svg
	rm -f $@
	zip $@ pedestrian_logo.svg
	zip -j $@ cheminements_pietons.preset.xml

clean:
	rm -f cheminements_pietons_fr.style.zip
	rm -f cheminements_pietons_fr.validator.zip
	rm -f cheminements_pietons_fr.preset.zip
