# GommeHD.net Cheetah 1.17.1

This is a fork of PaperSpigot tailored for the use at GommeHD.net

## How to build
- Clone this repository
- Open a shell (e.g. using Git Bash on Windows)
- Run `./gradlew applyPatches` to apply the patches
- Run `./gradlew build` to build the jar files
- Run `./gradlew shadowJar` to create the final jar file
- Run `./gradlew reobfJar` to create the final jar file
- The final jar file can be found in `Cheetah-Server/build/libs/Cheetah-Server-reobf.jar`

## How to use the API with Maven?
- Run `./gradlew publishToMavenLocal`
- Add the following maven dependency:
``<dependency>
  <groupId>net.gommehd.cheetah</groupId>
  <artifactId>cheetah</artifactId>
  <version>1.17.1-R0.1-SNAPSHOT</version>
  </dependency>``
  
## How to apply changes
- First apply the patches using `./gradlew applyPatches`
- Perform the changes to the code
- If you are a missing file, you can import it from NMS. For this, add a new line to `build-data/dev-imports.txt`, e.g. `minecraft net.minecraft.world.level.entity.LevelEntityGetterAdapter` to import the LevelEntityGetterAdapter. Then apply the patches again (`./gradlew applyPatches`). Keep in mind that all changes to the code will get LOST by this!
- Once all changes have been applied, switch to the Subproject in your Shell (`cd Cheetah-Server` or `cd Cheetah-API`) and run `git add .`. Then, commit your changes using `git commit -m "NAME OF PATCH"`
- Switch back to the project root and rebuild the patches: `./gradlew rebuildPatches`
- Commit the changes to the `patches/` folder

## Contributing
Only members of the GommeHD.net dev team are accepted. If you want to add a patch others could benefit from as well, consider submitting it to the upstream (https://github.com/PaperMC/Paper).