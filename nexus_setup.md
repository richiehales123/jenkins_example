### Start nexus container - from 
https://github.com/klo2k/nexus3-docker
`docker run --rm --privileged --persistent yes -d -p 8081:8081 -p 8085:8085 --name nexus klo2k/nexus3`

## Nexus UI Setup
### Step 1: Create Repo
1. Set http port - 8085 (set when docker container started - above)
2. Tick - Allow anonymous docker pull
3. Tick - Enable Docker V1 API
4. SAVE

### Step 2: Roles
1. Move all to active except "Default Role Realm"
2. SAVE

### Step 3: Create Role
1. Nexus Role
2. Modify Applied Privelages
3. SAVE

### Step 4: Users
1. First name = Anonymous
2. Last name - User
3. email anonymous@example.org
4. Roles - add role created in step 2 to granted roles
5. SAVE


## Edit Buildah config file
1. `vim /etc/containers/registries.conf`
2. Locate the [[registry]] section and add your HTTP registry. If the section does not exist, create it:
    `[[registry]]`
    `location = "172.18.0.4:8085"`
    `insecure = true`
