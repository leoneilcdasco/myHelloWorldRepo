
# Generic Utilities

function hello() {
        echo "Hello $1";
} 

function removeEndLineSpaces() {
        echo "sed 's/[[:blank:]]*$//' ${1} "
        sed 's/[[:blank:]]*$//' ${1} 
}

function genDateMonthPrefix() {
	echo `date +%d%b`
}

function gterm() {
	winSize='132x32'
	gnome-terminal --geometry ${winSize} &
}

function ngterm() { 
	declare -a offsetList
	offsetList=('+0+0' '+0+1000' '+1000+0' '+1000+1000' '+0+500')
	winSize='132x32'

	if [ $# -eq 0 ];
	then
		gterm
	else

		for i in $(seq 1 $1);
		do
			gnomeTermCmd="gnome-terminal --geometry ${winSize}${offsetList[$i]} &"
			echo $gnomeTermCmd
			$gnomeTermCmd
		done
	fi

	echo $numTerm

}

function pwdupld() {
	account="dasco"
	file=$1
	workServer=${2}.apac.nsn-net.net
	scpCmd="scp -r ${file} ${account}@${workServer}:$(pwd)"
	echo ${scpCmd}
	${scpCmd} 
}

function pwddnld() {
	account="dasco"
	file=$1
	workServer=${2}.apac.nsn-net.net
	scpCmd="scp -r ${account}@${workServer}:$(pwd)/${file} ."
	echo ${scpCmd}
	${scpCmd} 
}


# Git

function useGitHubId() {
        git config --global user.name "Leoneil C. Dasco"
        git config --global user.email leoneilcdasco@gmail.com
}

# AirPhone Servers

function mnling() {
        echo "ssh mnling${1}.apac.nsn-net.net";
        ssh mnling${1}.apac.nsn-net.net;
}

function sshaf() {
        echo "ssh manila5g@10.12.22.${1}"
        ssh manila5g@10.12.22.${1}
}

function dlaf() {
        echo "scp -r manila5g@10.12.22.${1}:${2} ${3}"
        scp -r manila5g@10.12.22.${1}:${2} ${3} 
}

function ulaf() {
        echo "scp -r ${2} manila5g@10.12.22.${1}:${3}"
        scp -r ${2} manila5g@10.12.22.${1}:${3}	
}

function setKeysAf() {
        userLocal='dasco'
        publicKeyLocalRepo="~${userLocal}/.ssh/id_rsa.pub"
        userRemote='manila5g'
        publicKeyRemoteRepo="~${userRemote}/dasco/sshkeys/"
	remoteMkdirCmd="ssh ${userRemote}@${1} mkdir -p ${publicKeyRemoteRepo}"
	echo ${remoteMkdirCmd}
	${remoteMkdirCmd}
        scpCmd="scp ${publicKeyLocalRepo} ${userRemote}@${1}:${publicKeyRemoteRepo}"
	echo ${scpCmd}
	${scpCmd}
	remoteCpCmd="ssh ${userRemote}@${1} cat ${publicKeyRemoteRepo}id_rsa.pub > ~${userRemote}/.ssh/authorized_keys"
	echo ${remoteCpCmd}
	${remoteCpCmd}
}



function sshrcpaf() {
	echo "ssh _rcpadmin@10.12.22.${1}"
        ssh _rcpadmin@10.12.22.${1}
}

function dlafrcp() {
        echo "scp -r _rcpadmin@10.12.22.${1}:${2} ${3}"
        scp -r _rcpadmin@10.12.22.${1}:${2} ${3}
}

function ulafrcp() {
        echo "scp -r ${2} _rcpadmin@10.12.22.${1}:${3}"
        scp -r ${2} _rcpadmin@10.12.22.${1}:${3}
}

#Gerrit

function useGerritId() {
	git config --global user.name "Dasco, Leoneil(Nokia - PH/Quezon City)"
	git config --global user.email leoneil.dasco@nokia.com
}

function cloneAirPhone() {
	addrGerrit="gerrit.ext.net.nokia.com"
	portGerrit="29418"
	repoSshUrlAirPhone="ssh://${USER}@${addrGerrit}:${portGerrit}/MN/5G/AIRPHONE/airphone"

	gitCloneCmd="git clone ${repoSshUrlAirPhone}"
	echo "${gitCloneCmd}"
	${gitCloneCmd}

	commitHookSrcPath="${addrGerrit}:hooks/commit-msg"
	commitHookDstPath="airphone/.git/hooks"
	scpMsgHookCmd="scp -p -P ${portGerrit} ${USER}@${commitHookSrcPath} ${commitHookDstPath}"
	echo "${scpMsgHookCmd}"
	${scpMsgHookCmd}

	updateSubCmd="git submodule update --init --recursive"
	echo "cd airphone; ${updateSubCmd}"
	cd airphone; ${updateSubCmd}
}

function mkworkAirPhone() {
	myWorkDir=`genDateMonthPrefix`
	echo "mkdir ${myWorkDir}"
	mkdir ${myWorkDir}
	echo "cd ${myWorkDir}"
	cd ${myWorkDir}
	cloneAirPhone
}

function cloneGnb() {
        addrGerrit="gerrit.ext.net.nokia.com"
        portGerrit="29418"
        repoSshUrlGnb="ssh://${USER}@${addrGerrit}:${portGerrit}/MN/5G/NB/gnb"

        gitCloneCmd="git clone ${repoSshUrlGnb}"
        echo "${gitCloneCmd}"
        ${gitCloneCmd}

        commitHookSrcPath="${addrGerrit}:hooks/commit-msg"
        commitHookDstPath="gnb/.git/hooks"
        scpMsgHookCmd="scp -p -P ${portGerrit} ${USER}@${commitHookSrcPath} ${commitHookDstPath}"
        echo "${scpMsgHookCmd}"
        ${scpMsgHookCmd}

        updateSubCmd="git submodule update --init --recursive"
        echo "cd airphone; ${updateSubCmd}"
        cd gnb; ${updateSubCmd}
}


function mkworkGnb() {
        myWorkDir=`genDateMonthPrefix`
        echo "mkdir ${myWorkDir}"
        mkdir ${myWorkDir}
        echo "cd ${myWorkDir}"
        cd ${myWorkDir}
        cloneGnb
}

# Others

function egrepRlc() {
        egrep '(RxHandler.*sending status)|(TxHandle.*statusPdu)|(handleMessage.*VrR)|(handleMessage.*VtS)|(received LcidDataMessage)|(sending LcidDataMessage)' $1

}


