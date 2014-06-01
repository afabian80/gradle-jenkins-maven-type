job(type: 'maven') {
	name 'hello'
	using 'base-template'
	scm {
		git 'git@git.somewhere.com/repo'
	}
	goals 'clean install'
	publishers {
		archiveArtifacts 'build/libs/*.jar'
	}
}