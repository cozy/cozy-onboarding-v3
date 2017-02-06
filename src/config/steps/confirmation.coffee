module.exports = {
    name: 'confirmation',
    view : 'steps/confirmation'
    save: (data) ->
        data.onboardedSteps = [
            'welcome',
            'agreement',
            'password',
            'infos',
            'accounts',
            'confirmation'
        ]

        return @onboarding.updateInstance data
            .then @handleSaveSuccess, @handleServerError
}
