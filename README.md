ArchivesSpace 1.1.0 maintenance plugin
======================================

This plugin is used to apply bug fixes and small feature additions from the master branch into a 1.1.0 instance.

[SUBSCRIBE TO UPDATES](https://github.com/archivesspace/aspace-110-plugin/commits/master.atom)

Usage
-----

Access the ArchivesSpace plugins directory.

```
cd /path/to/archivesspace/plugins
```

Download using git (recommended)
--------------------------------

```
git clone https://github.com/archivesspace/aspace-110-plugin
```

Download using zip
------------------

```
wget https://github.com/lyrasis/aspace-110-plugin/archive/master.zip
unzip master.zip
mv aspace-110-plugin-master aspace-110-plugin
```

Enable the plugin
-----------------

Edit `config.rb` and append:

```
AppConfig[:plugins] << "aspace-110-plugin"
```

Then restart ArchivesSpace.

Upgrades
--------

Stop ArchivesSpace.

**Git**

Enter the `aspace-110-plugin` directory:

```
git pull origin master
```

**Zip**

Enter the `plugins` directory and remove the existing maintenance plugin:

```
rm -rf aspace-110-plugin
```

Now repeat the download / install steps as above (for zip).

**Complete the upgrade**

Restart ArchivesSpace.

List of bugs fixes / features
-----------------------------

- [Refine default public ui sort](https://www.pivotaltracker.com/n/projects/386247/stories/81202652)
- [Search results error with events](https://www.pivotaltracker.com/n/projects/386247/stories/81687020)
- [As an archivist, I would like to be import EAD in a way that groups the containers to their instances ](https://www.pivotaltracker.com/story/show/81850480 )
- [As an archivist, I would like containers to be EAD exported in  way that groups them to their instance ](https://www.pivotaltracker.com/story/show/79104156) 
- [Filing Title not in EAD export ](https://www.pivotaltracker.com/n/projects/386247/stories/81106404)
---
