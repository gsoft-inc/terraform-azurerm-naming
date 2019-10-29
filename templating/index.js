const fs = require("fs");
const mustache = require("mustache");

const modules = require("./data.json").modules;

const templates = {
    main: fs.readFileSync(`${__dirname}/templates/main.tf.mustache`, "utf8"),
    outputs: fs.readFileSync(`${__dirname}/templates/outputs.tf.mustache`, "utf8"),
    variables: fs.readFileSync(`${__dirname}/templates/variables.tf.mustache`, "utf8"),
    versions: fs.readFileSync(`${__dirname}/templates/versions.tf.mustache`, "utf8"),
}

modules.forEach(mod => {
    Object.entries(templates).forEach(([templateName, templateValue]) => {
        const rendered = mustache.render(templateValue, mod);
        const directory = `${__dirname}/../modules/${mod.category}/${mod.name}`;
        if (!fs.existsSync(directory)) {
            fs.mkdirSync(directory, { recursive: true });
        }

        fs.writeFileSync(`${directory}/${templateName}.tf`, rendered);
    })
});